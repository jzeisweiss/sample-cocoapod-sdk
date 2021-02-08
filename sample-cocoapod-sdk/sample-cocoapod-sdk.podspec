Pod::Spec.new do |spec|
    spec.name         = "sample-cocoapod-sdk"
    spec.version      = "0.1.0"
    spec.summary      = "Glia SDK example"
    spec.description  = <<-DESC
    Example of embedding their SDK into a framework
    DESC
    spec.license          = { :type => 'MIT', :file => 'LICENSE' }
    spec.author             = { "author" => "zeisweiss.james@gmail.com" }
    spec.documentation_url = "https://github.com/jzeisweiss/sample-cocoapod-sdk"
    spec.platforms = { :ios => "12.0" }
    spec.swift_version = "5.3.2"
    spec.ios.deployment_target = '12.0'
    spec.ios.vendored_frameworks = 'SalemoveSDK.framework'

    spec.source       = { :git => "git@github.com:abeai/abe-ai-sdk-ios-ui-glia-cocoapod.git", :tag => "#{spec.version}" }
    spec.source_files  = 'sample-cocoapod-sdk/**/*.swift'
    
    spec.dependency 'Moya', '14.0.0'
    spec.dependency 'ReactiveSwift', '6.2.1'
    spec.dependency 'SwiftPhoenixClient', '1.2.1'
    spec.dependency 'ios-socket-client', '9.1.0'
    spec.dependency 'glia-webrtc/bitcode', '0.0.3'
    spec.dependency 'Macaw', '0.9.7'
    spec.dependency 'TwilioVoice', '5.5.0.g'
    spec.dependency 'AbeAIUIKit', '~> 0.3.5'
    
    # https://github.com/CocoaPods/CocoaPods/issues/10065#issuecomment-694266259
    spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
