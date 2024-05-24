import 'package:core_common/extension.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Also',
    () => {
      test('test', () {
        final textList = <String>[].also((it) {
          it.add('hoge');
          it.add('fuga');
        });
        expect(textList, ['hoge', 'fuga']);
      }),
    },
  );

  /// Returns the given [text] if it is not `null`.
  String? makeNullableText(String? text) => text;
  group(
    'Let',
    () => {
      test('non-null', () {
        final text = makeNullableText('text')?.let((it) => 'non-null $it');
        expect(text, 'non-null text');
      }),
      test('nullsy', () {
        final text = makeNullableText(null)?.let((it) => 'non-null $it');
        expect(text, null);
      }),
    },
  );
}
