Pod::Spec.new do |spec|
  spec.name         = 'checkid'
  spec.version      = '1.0.23.0316'
  spec.license      = 'MIT'
  spec.summary      = 'CheckID framework with Vietnamese Chip Citizen Card'
  spec.homepage     = 'https://github.com/phungtiep/CheckID'
  spec.author       = 'PHUNGTSM @Mobile-ID Technology and Services Joint Stock Company'
  spec.source       = { :git => 'https://github.com/phungtiep/CheckID.git', :tag => '1.0.23.0316' }
  spec.requires_arc = true
  spec.ios.deployment_target  = '13.0'
  spec.dependency 'GoogleMLKit/FaceDetection'
  spec.dependency 'OpenSSL-Universal'
  spec.dependency 'CryptoSwift'
  spec.dependency 'SwiftyTesseract'
  spec.dependency 'SwiftyRSA'
  spec.dependency 'SwiftyJSON'
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "checkid.xcframework"
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end