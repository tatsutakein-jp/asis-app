extension StringX on String {
  /// 文字列をキャメルケースに変換
  String toCamelCase() {
    // 文字列を小文字に変換してスペースで分割
    final words = toLowerCase().split(' ');

    // StringBufferのインスタンスを作成
    final buffer = StringBuffer();

    // 最初の単語はそのまま
    buffer.write(words[0]);

    // 2単語目以降の最初の文字を大文字に変換
    for (var i = 1; i < words.length; i++) {
      final word = words[i];
      if (word.isNotEmpty) {
        buffer.write(word.substring(0, 1).toUpperCase());
        buffer.write(word.substring(1));
      }
    }

    return buffer.toString();
  }
}
