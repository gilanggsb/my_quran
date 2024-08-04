enum BookmarkCategoryMode { view, edit, add }

extension BookmarkCategoryModeEnumExt on BookmarkCategoryMode {
  bool get isViewMode => this == BookmarkCategoryMode.view;
  bool get isEditMode => this == BookmarkCategoryMode.edit;
  bool get isAddMode => this == BookmarkCategoryMode.add;
}
