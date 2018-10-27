Pod::Spec.new do |s|
  s.name         = 'ScoutSDK'
  s.version      = '0.1.0'
  s.summary      = 'Build powerful gaming community apps with magic. Scout delivers gaming stats to apps and websites.'

  s.description  = <<-DESC
Build powerful gaming community apps with magic. Scout delivers gaming stats to apps and websites.
                   DESC

  s.homepage     = 'https://www.scoutsdk.com'
  s.social_media_url = 'https://twitter.com/scoutsdk'

  s.license      = 'MIT'
  # s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { 'Lochlan Wansbrough' => 'loch@scoutsdk.com' }

  s.platform     = :ios, '9.0'

  s.source       = { :git => 'https://github.com/scoutsdk/scout-sdk-ios.git', :tag => "#{s.version}" }
  s.source_files  = 'ScoutSDK/**/*'

  s.swift_version = '4.2'

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = 'icon.png'
  # s.resources = 'Resources/*.png'

  s.frameworks = 'UIKit', 'WebKit'

  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  s.static_framework = true

  s.requires_arc = true

  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.dependency 'Google-Mobile-Ads-SDK'
  s.dependency 'GoogleMobileAdsMediationFacebook'
  s.dependency 'FBAudienceNetwork'
  s.dependency 'Apollo'
  s.dependency 'AppAuth'

end
