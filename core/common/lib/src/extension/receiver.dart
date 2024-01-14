extension Receiver<T> on T {
  /// インスタンスをクロージャー内で処理して返却する
  ///
  /// ```dart
  /// final textList = <String>[].also((it) {
  ///   it.add("hoge");
  ///   it.add("fuga");
  /// });
  /// ```
  T also(void Function(T it) block) {
    block(this);
    return this;
  }

  /// インスタンスをクロージャー内の引数で受け取り、新しい処理結果の値を返却する
  ///
  /// ```dart
  /// final String? nullableText = "text";
  /// final text = nullableText?.let((it) => "non-null $it");
  /// print(text); // non-null text
  /// ```
  R let<R>(R Function(T) block) => block(this);
}
