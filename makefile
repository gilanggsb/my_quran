FLUTTER_CMD=fvm flutter
DART_CMD=fvm dart
BUILD_APK_CMD=build apk --obfuscate --split-debug-info=./split-debug-info-development --no-tree-shake-icons 
BUILD_AAB_CMD=build appbundle
# ANDROID_DIR=$(shell cd "$(dir $(lastword $(MAKEFILE_LIST)))" && cd ../android && pwd)
ANDROID_DIR="android"
PUBSPEC_FILE=pubspec.yaml
GRADLE_FILE=$(ANDROID_DIR)/app/build.gradle
FLAVOR_DEVELOPMENT_ARGS=--flavor development --target lib/main_development.dart --dart-define FLAVOR=development 
# --dart-define-from-file env/.env.development
FLAVOR_STAGING_ARGS=--flavor staging --target lib/main_staging.dart --dart-define FLAVOR=staging 
# --dart-define-from-file env/.env.staging
FLAVOR_PRODUCTION_ARGS=--flavor production --target lib/main_production.dart --dart-define FLAVOR=production 
# --dart-define-from-file env/.env.production

.PHONY: menu build_development build_staging build_production clean pub_get

# Function to extract version from pubspec.yaml and versionCode from build.gradle
get_pubspec_version = $(shell grep '^version:' $(PUBSPEC_FILE) | awk '{print $$2}' | cut -d '+' -f1)
get_gradle_version_code = $(shell grep 'versionCode' $(GRADLE_FILE) | awk '{print $$2}')

menu:
	@echo "Please select a target:"
	@echo "1) Build Development APK"
	@echo "2) Build Staging APK"
	@echo "3) Build Production APK"
	@echo "4) Clean Project"
	@echo "5) Run 'pub get'"
	@echo "6) Run build runner"
	@echo "7) Mason make feature"
	@echo "8) Dart Fix"
	@echo "9) Clean and pub get"
	@echo "10) Dart Apply Fix"
	@echo "11) Build AAB"
	@echo "Enter your choice:"
	@read choice; \
	if [ $$choice -eq 1 ]; then \
		$(MAKE) build_development; \
	elif [ $$choice -eq 2 ]; then \
		$(MAKE) build_staging; \
	elif [ $$choice -eq 3 ]; then \
		$(MAKE) build_production; \
	elif [ $$choice -eq 4 ]; then \
		$(MAKE) clean; \
	elif [ $$choice -eq 5 ]; then \
		$(MAKE) pub_get; \
	elif [ $$choice -eq 6 ]; then \
		$(MAKE) build_runner; \
	elif [ $$choice -eq 7 ]; then \
		$(MAKE) mason_feature; \
	elif [ $$choice -eq 8 ]; then \
		$(MAKE) dart_fix; \
	elif [ $$choice -eq 9 ]; then \
		$(MAKE) clean_n_get; \
	elif [ $$choice -eq 10 ]; then \
		$(MAKE) dart_apply_fix; \
	elif [ $$choice -eq 11 ]; then \
		$(MAKE) build_aab_ver; \
	else \
		echo "Invalid choice."; \
	fi

build_development:
	$(FLUTTER_CMD) $(BUILD_APK_CMD) $(FLAVOR_DEVELOPMENT_ARGS)

build_profile_development:
	$(FLUTTER_CMD) $(BUILD_APK_CMD) --profile $(FLAVOR_DEVELOPMENT_ARGS)

build_staging:
	$(FLUTTER_CMD) $(BUILD_APK_CMD) $(FLAVOR_STAGING_ARGS)

build_production:
	$(FLUTTER_CMD) $(BUILD_APK_CMD) $(FLAVOR_PRODUCTION_ARGS)

build_aab_ver:
	@current_build_name=$$(grep '^version:' $(PUBSPEC_FILE) | awk '{print $$2}' | cut -d '+' -f1); \
	current_version_code=$$(grep 'versionCode' $(GRADLE_FILE) | awk '{print $$2}'); \
	echo "Current build name (from pubspec.yaml): $$current_build_name"; \
	echo "Current version code (from build.gradle): $$current_version_code"; \
	read -p "Enter new build name (or press Enter to keep $$current_build_name): " build_name; \
	read -p "Enter new version code (or press Enter to keep $$current_version_code): " version_code; \
	build_name=$${build_name:-$$current_build_name}; \
	version_code=$${version_code:-$$current_version_code}; \
	$(FLUTTER_CMD) $(BUILD_AAB_CMD) $(FLAVOR_PRODUCTION_ARGS) --build-name=$$build_name --build-number=$$version_code

clean:
	$(FLUTTER_CMD) clean
	# cd $(ANDROID_DIR) && ./gradlew clean && cd ..

pub_get:
	$(FLUTTER_CMD) pub get

clean_n_get:
	$(MAKE) clean
	$(MAKE) pub_get

clean_folder:
	find $(folder) -name "*.g.dart" -o -name "*.freezed.dart" -name "*.gr.dart" -exec rm -f {} \;

build_runner_clean_folder:
	make clean_folder folder=${folder}

build_runner:
	${DART_CMD} run build_runner build -d

build_runner_filter:
	make build_runner_clean_folder folder=${folder}
	${DART_CMD} run build_runner build -c ${config} -d 

build_runner_env:
	make build_runner_filter folder="lib/common/env" config="env"

build_runner_router:
	make build_runner_filter folder="lib/common/routes" config="router"

build_runner_models:
	make build_runner_filter folder="lib/features" config="models"
	
mason_feature:
	mason make feature -o ./lib/features

dart_fix:
	$(DART_CMD) fix --dry-run

dart_apply_fix:
	$(DART_CMD) fix --apply