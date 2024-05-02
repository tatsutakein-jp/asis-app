/// UseCase の基底クラス
abstract interface class UseCase<Arguments, ReturnType> {
  ReturnType execute(Arguments args);
}

/// UseCase の拡張関数群
extension UseCaseX<ReturnType> on UseCase<void, ReturnType> {
  /// 引数なしで UseCase を実行する
  ///
  /// ```dart
  /// final questList = ref.read(fetchQuestListUseCaseProvider).call();
  ///
  /// // or
  ///
  /// final questList = ref.read(fetchQuestListUseCaseProvider)();
  ///
  /// // or
  ///
  /// final fetchQuestList = ref.read(fetchQuestListUseCaseProvider);
  /// final questList = fetchQuestList(); // or fetchQuestList.call();
  /// ```
  ReturnType call() => execute(null);
}
