Pod::Spec.new do |spec|

  spec.name         = "FireworkVideo"
  spec.version      = "0.2.0"
  spec.summary      = "FireworkVideoSDK"

  spec.homepage     = "https://github.com/loopsocial/firework_ios_sdk"
  spec.license      = { :text => "Copyright 2020 Firework", :type => "Copyright" }
  spec.author       = "Firework.tv"
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/loopsocial/firework_ios_sdk.git", :tag => "v#{spec.version}" }
  spec.vendored_frameworks = "frameworks/FireworkVideo.xcframework"
  spec.frameworks   = "AVFoundation"
  spec.cocoapods_version = '>= 1.10.0'

end
