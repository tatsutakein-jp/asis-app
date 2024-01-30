#!/bin/sh

# flavor.xcconfigをincludeするためのxcconfigファイル
OUTPUT_FILE="${SRCROOT}/Flutter/DartDefines.xcconfig"

# Dart-Definesのデコード処理
function decode_url() { echo "${*}" | base64 --decode; }

# 既存のDartDefines.xcconfigを空にする
: > $OUTPUT_FILE

IFS=',' read -r -a define_items <<<"$DART_DEFINES"

for index in "${!define_items[@]}"
do
    # デコードを実行する
    item=$(decode_url "${define_items[$index]}")
    # FLAVOR=xxxの形式であれば、その値を取得して、対応するxcconfigをincludeする
    if [ $(echo $item | grep 'FLAVOR') ] ; then
        value=${item#*=}
        echo "#include \"$value.xcconfig\"" >> $OUTPUT_FILE
    fi
done