Pod::Spec.new do |s|
  s.name             = "MetarouterAnalytics-Firebase"
  s.version          = "2.7.1-beta"
  s.summary          = "Firebase Integration for Metarouter's analytics-ios library."

  s.description      = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools.

                       This is the Firebase integration for the iOS library.
                       DESC

  s.homepage         = "http://metarouter.io/"
  s.license          =  { :type => 'MIT' }
  s.author           = { "Metarouter" => "info@metarouter.io" }
  s.source           = { :git => "https://github.com/astronomer-integrations/analytics-ios-integration-firebase.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/metarouter'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Segment-Firebase/Classes/**/*'
  s.default_subspec = 'Core'
  s.static_framework = true

  s.dependency 'MetarouterAnalytics', '~> 3.8.0-beta.4'
  s.dependency 'Firebase/Core', '~> 6.2'
  s.dependency 'FirebaseAnalytics','~> 6.1'

  s.subspec 'Core' do |core|
    #For users who only want the core Firebase package
  end

  s.subspec 'DynamicLinks' do |dynamiclinks|
    # This will bundle in Firebase Dynamic Link support
    dynamiclinks.dependency 'Firebase/DynamicLinks'
  end

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
