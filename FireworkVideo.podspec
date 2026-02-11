Pod::Spec.new do |spec|
  spec.name                     = "FireworkVideo"
  spec.version                  = "1.40.0"
  spec.summary                  = "FireworkVideoSDK"
  spec.homepage                 = "https://github.com/loopsocial/firework_ios_sdk"
  spec.license                  = { :text => "Copyright 2021 Loop Now Technologies, Inc.", :type => "Copyright" }
  spec.author                   = "Loop Now Technologies, Inc."
  spec.platform                 = :ios, "13.0"
  spec.swift_versions           = '5.3'
  spec.module_name              = "FireworkVideo"
  spec.source                   = { :http => "https://github.com/loopsocial/firework_ios_sdk/releases/download/v#{spec.version}/FireworkVideo-v#{spec.version}.xcframework.zip" }
  spec.preserve_paths           = "FireworkVideo.xcframework"
  spec.ios.vendored_frameworks  = "FireworkVideo.xcframework"
  spec.frameworks               = "AVFoundation"
  spec.cocoapods_version        = '>= 1.10.0'
  spec.default_subspec          = :none

  spec.script_phases = [
    { 
      :name => 'Check FireworkVideoIVSSupport version',
      :script => '
      LIBRARY_NAME="FireworkVideoIVSSupport"
      BASE_VERSION="0.9.0"

      INFO_PLIST_PATH="${PODS_ROOT}/"$LIBRARY_NAME"/"$LIBRARY_NAME".xcframework/ios-arm64/"$LIBRARY_NAME".framework/Info.plist"
      if [ ! -e "$INFO_PLIST_PATH" ]; then
        echo "$LIBRARY_NAME is not installed."
        exit 0
      fi

      FRAMEWORK_VERSION=$(plutil -convert xml1 -o - "$INFO_PLIST_PATH" | grep -A 1 "<key>CFBundleShortVersionString</key>" | grep "<string>" | sed "s/.*<string>\(.*\)<\/string>.*/\1/")
      echo "Checking $LIBRARY_NAME version: $FRAMEWORK_VERSION"
      if [[ -n "$FRAMEWORK_VERSION" ]]; then
        if awk "BEGIN {exit !(ARGV[1] < ARGV[2])}" "$FRAMEWORK_VERSION" "$BASE_VERSION"; then
          echo "Version $FRAMEWORK_VERSION of $LIBRARY_NAME is incompatible with the current version of FireworkVideo. Please use a version of $LIBRARY_NAME that is $BASE_VERSION or higher."
        exit 1
        else
          echo "Version $FRAMEWORK_VERSION of $LIBRARY_NAME is compatible with the current version of FireworkVideo."
        fi
      else
        echo "Failed to extract framework version."
      fi
      ',
      :output_files => ['${DERIVED_FILE_DIR}/out_file1.txt']
    },
    { 
      :name => 'Check FireworkVideoAgoraSupport version',
      :script => '
      LIBRARY_NAME="FireworkVideoAgoraSupport"
      BASE_VERSION="0.6.0"

      INFO_PLIST_PATH="${PODS_ROOT}/"$LIBRARY_NAME"/"$LIBRARY_NAME".xcframework/ios-arm64/"$LIBRARY_NAME".framework/Info.plist"
      if [ ! -e "$INFO_PLIST_PATH" ]; then
        echo "$LIBRARY_NAME is not installed."
        exit 0
      fi

      FRAMEWORK_VERSION=$(plutil -convert xml1 -o - "$INFO_PLIST_PATH" | grep -A 1 "<key>CFBundleShortVersionString</key>" | grep "<string>" | sed "s/.*<string>\(.*\)<\/string>.*/\1/")
      echo "Checking $LIBRARY_NAME version: $FRAMEWORK_VERSION"
      if [[ -n "$FRAMEWORK_VERSION" ]]; then
        if awk "BEGIN {exit !(ARGV[1] < ARGV[2])}" "$FRAMEWORK_VERSION" "$BASE_VERSION"; then
          echo "Version $FRAMEWORK_VERSION of $LIBRARY_NAME is incompatible with the current version of FireworkVideo. Please use a version of $LIBRARY_NAME that is $BASE_VERSION or higher."
        exit 1
        else
          echo "Version $FRAMEWORK_VERSION of $LIBRARY_NAME is compatible with the current version of FireworkVideo."
        fi
      else
        echo "Failed to extract framework version."
      fi
      ',
      :output_files => ['${DERIVED_FILE_DIR}/out_file2.txt']
    },
  ]
end
