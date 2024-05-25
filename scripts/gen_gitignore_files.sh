#! /bin/bash

# Project root directory
FILE_PATH=$(dirname "$0")
cd "$FILE_PATH/../" || exit

echo "🚀 Generate gitignore target files start"
echo "🚀 Working directory: $(pwd)"

##############################################################################
##
##  Firebase Options
##
##############################################################################
echo ""
echo "🚀 Firebase Options: Start"

# source file (dev)
FIREBASE_OPTIONS_SOURCE_FILE="app/lib/flavor/dev/firebase_options.dart"

# target files
FIREBASE_OPTIONS_STG_FILE="app/lib/flavor/stg/firebase_options.dart"
FIREBASE_OPTIONS_PROD_FILE="app/lib/flavor/prod/firebase_options.dart"

# copy to stg
FIREBASE_OPTIONS_TARGET_STG="app/lib/flavor/stg/firebase_options.dart"
cp -i "$FIREBASE_OPTIONS_SOURCE_FILE" "$FIREBASE_OPTIONS_TARGET_STG"
FIREBASE_OPTIONS_COPY_TO_STG=$?
if [ $FIREBASE_OPTIONS_COPY_TO_STG -eq 0 ]; then
    echo "🎉 Firebase Options: Successfully generated $FIREBASE_OPTIONS_TARGET_STG"
else
    echo "⚠️ Firebase Options: Failed to generate $FIREBASE_OPTIONS_TARGET_STG"
fi

# copy to prod
FIREBASE_OPTIONS_TARGET_PROD="app/lib/flavor/prod/firebase_options.dart"
cp -i "$FIREBASE_OPTIONS_SOURCE_FILE" "$FIREBASE_OPTIONS_TARGET_PROD"
FIREBASE_OPTIONS_COPY_TO_PROD=$?
if [ $FIREBASE_OPTIONS_COPY_TO_PROD -eq 0 ]; then
    echo "🎉 Firebase Options: Successfully generated $FIREBASE_OPTIONS_TARGET_PROD"
else
    echo "⚠️ Firebase Options: Failed to generate $FIREBASE_OPTIONS_TARGET_PROD"
fi

# result
if [ $FIREBASE_OPTIONS_COPY_TO_STG -eq 0 ] && [ $FIREBASE_OPTIONS_COPY_TO_PROD -eq 0 ]; then
  echo "✅ Firebase Options: Success"
else
  echo "🚫 Firebase Options: Failed"
fi

##############################################################################
##
##  Finish
##
##############################################################################
echo ""
echo "🚀 Generate gitignore target files finished"
