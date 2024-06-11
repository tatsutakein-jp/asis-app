import 'dart:math';

String generateRandomColor() {
  // ランダムなRGB値を生成
  final random = Random();
  final r = random.nextInt(256);
  final g = random.nextInt(256);
  final b = random.nextInt(256);

  // RGB値を16進数に変換してカラーコードを生成
  final colorCode = r.toRadixString(16).padLeft(2, '0') +
      g.toRadixString(16).padLeft(2, '0') +
      b.toRadixString(16).padLeft(2, '0');

  return colorCode;
}
