Pod::Spec.new do |spec|
  spec.name         = 'checkid'
  spec.version      = '2.0.23.0628'
  spec.license      = 'MIT'
  spec.summary      = 'CheckID framework with Vietnamese Chip Citizen Card'
  spec.homepage     = 'https://github.com/phungtiep/CheckID'
  spec.author       = 'PHUNGTSM @Mobile-ID Technology and Services Joint Stock Company'
  spec.source       = { :git => 'https://github.com/phungtiep/CheckID.git', :tag => '2.0.23.0628' }
  spec.requires_arc = true
  spec.ios.deployment_target  = '11.0'
  spec.weak_frameworks = ['CoreNFC']
  spec.dependency "GoogleMLKit/FaceDetection" , "3.2.0"
  spec.dependency "CryptoSwift" , "~> 1.6.0"
  spec.dependency "SwiftyTesseract" , "~> 3.1.3"
  spec.dependency "SwiftyRSA"
  spec.dependency "SwiftyJSON", "~> 5.0.1"
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "checkid.xcframework"
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
