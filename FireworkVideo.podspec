Pod::Spec.new do |spec|

  spec.name         = "FireworkVideo"
  spec.version      = "0.2.0"
  spec.summary      = "FireworkVideoSDK"

  spec.homepage     = "https://github.com/loopsocial/firework_ios_sdk"
  spec.license      = "Commercial"
  spec.author       = "Firework.tv"
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/loopsocial/firework_ios_sdk.git", :tag => "v#{spec.version}" }
  spec.vendored_frameworks = "vendor/FireworkVideo.xcframework"
  spec.frameworks   = "AVFoundation"

end
