Pod::Spec.new do |spec|
  spec.name                     = "FireworkVideo"
  spec.version                  = "1.25.1"
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

  spec.subspec "FireworkMultiHostStreaming" do |multihost|
    multihost.dependency "FireworkVideoAgoraSupport"
  end

  spec.subspec "FireworkLowLatencyStreaming" do |lowLatency|
    lowLatency.dependency "FireworkVideoIVSSupport"
  end

  spec.subspec "FireworkInteractiveMediaAds" do |ima|
    ima.dependency "FireworkVideoGIMASupport"
  end

  spec.subspec "FireworkGoogleAdManager" do |adManager|
    adManager.dependency "FireworkVideoGAMSupport"
  end
end
