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

  group(
    'Let',
    () => {
      test('non-null', () {
        final String? nullableText = 'text';
        final text = nullableText?.let((it) => 'non-null $it');
        expect(text, 'non-null text');
      }),
      test('nullsy', () {
        final String? nullableText = null;
        final text = nullableText?.let((it) => 'non-null $it');
        expect(text, null);
      }),
    },
  );
}
