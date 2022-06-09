Pod::Spec.new do |spec|
  spec.name                     = "FireworkVideo"
  spec.version                  = "0.17.0"
  spec.summary                  = "FireworkVideoSDK"
  spec.homepage                 = "https://github.com/loopsocial/firework_ios_sdk"
  spec.license                  = { :text => "Copyright 2021 Loop Now Technologies, Inc.", :type => "Copyright" }
  spec.author                   = "Loop Now Technologies, Inc."
  spec.platform                 = :ios, "12.0"
  spec.module_name              = "FireworkVideo"
  spec.source                   = { :http => "https://github.com/loopsocial/firework_ios_sdk/releases/download/v#{spec.version}/FireworkVideo-v#{spec.version}.xcframework.zip" }
  spec.preserve_paths           = "FireworkVideo.xcframework"
  spec.ios.vendored_frameworks  = "FireworkVideo.xcframework"
  spec.frameworks               = "AVFoundation"
  spec.cocoapods_version        = '>= 1.10.0'
end
