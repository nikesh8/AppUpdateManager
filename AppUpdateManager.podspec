#
# Be sure to run `pod lib lint AppUpdateManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AppUpdateManager'
  s.version          = '0.1.0'
  s.summary          = 'AppUpdate is library for managing app updates and its maintenance.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'AppUpdate is library for managing app updates and its maintenance. It will handle from out web portal.'

  s.homepage         = 'https://github.com/nikesh8/AppUpdateManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nikesh8' => 'nikesh@logicwind.com' }
  s.source           = { :git => 'https://github.com/nikesh8/AppUpdateManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'

  s.source_files = 'AppUpdateManager/Classes/**/*'
  s.resources = ['AppUpdateManager/Assets/AppUpdate.storyboard']

  # s.resource_bundles = {
  #   'AppUpdateManager' => ['AppUpdateManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
