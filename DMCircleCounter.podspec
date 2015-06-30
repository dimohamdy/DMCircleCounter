#
# Be sure to run `pod lib lint DMCircleCounter.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DMCircleCounter"
  s.version          = "1.0.0"
  s.summary          = "Beautiful Circle Counter."
  s.description      = <<-DESC
                       Beautiful Circle Counter that inspire from athkar App in App store.

                       DESC
  s.homepage         = "https://github.com/dimohamdy/DMCircleCounter"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'LICENSE.md'
  s.author           = { "Ahmed Hamdy" => "dimo.hamdy@gmail.com" }
  s.source           = { :git => "https://github.com/dimohamdy/DMCircleCounter.git", :tag => s.version.to_s }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'DMCircleCounter/Classes/*.{h,m}'
  s.resource_bundles = {
    'DMCircleCounter' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
