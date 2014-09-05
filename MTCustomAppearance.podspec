#
# Be sure to run `pod lib lint MTCustomAppearance.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MTCustomAppearance"
  s.version          = "0.1.1"
  s.summary          = "Customize the appearance of your app."
  s.description      = <<-DESC
Customize the appearance of your app. Adding more UIControls soon. Available controls. 
*UISwitch
*UIStepper
*UIProgressView
*UISlider
                       DESC

  s.homepage         = "https://github.com/alokc83/MTCustomAppearance"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Alok Choudhary" => "alok.c83@gmail.com" }
  s.source           = { :git => "https://github.com/alokc83/MTCustomAppearance.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'MTCustomAppearance' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
