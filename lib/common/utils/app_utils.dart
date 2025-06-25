import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

import '../common.dart';

class AppUtils {
  static void copyLink({
    required String data,
    required String successMessage,
    BuildContext? context,
  }) {
    Clipboard.setData(ClipboardData(text: data)).then((_) {
      SnackbarManager.showSuccessSnackbar(message: successMessage);
    });
  }

  static String addCurrencyFormat(String input) {
    // Add 'IDR' currency symbol
    String result = 'IDR ';

    // Convert input string to integer
    int value = int.tryParse(input) ?? 0;

    // Add comma separators for thousands
    result += value.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match match) => '${match[1]},',
    );

    return result;
  }

  static Future<String> getFilePath(String filename) async {
    Directory? dir;
    try {
      if (Platform.isIOS) {
        dir = await getApplicationDocumentsDirectory(); // for iOS
        return "${dir.path}/$filename";
      }
      dir = Directory('/storage/emulated/0/Download/'); // for android
      if (!await dir.exists()) dir = (await getExternalStorageDirectory())!;
      return "${dir.path}$filename";
    } catch (err) {
      debugPrint("Cannot get download folder path $err");
    }
    return '';
  }

  static String generateUUIDv4() {
    final random = Random.secure();
    return '${_randomHex(random, 8)}-${_randomHex(random, 4)}-4${_randomHex(random, 3)}-${_randomHex(random, 1)}${_randomHex(random, 3)}-${_randomHex(random, 12)}';
  }

  static String _randomHex(Random random, int length) {
    final hexChars = '0123456789abcdef';
    final codeUnits = List.generate(length, (index) {
      final randomIndex = random.nextInt(hexChars.length);
      return hexChars.codeUnitAt(randomIndex);
    });
    return String.fromCharCodes(codeUnits);
  }
}

const customFreezed = Freezed(fromJson: true, toJson: true, unionValueCase: FreezedUnionCase.snake);
const customJsonSerializable = JsonSerializable();
