#
# Be sure to run `pod lib lint Colors.swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Colors.swift"
  s.version          = "0.1.0"
  s.summary          = "Add colors to your swift command line tools."

  s.description      = <<-DESC
                        Add colors to your swift command line tools. Specify background color, foreground color and styles on your terminal outputs.
                       DESC

  s.homepage         = "https://github.com/jkandzi/Colors.swift"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Justus Kandzi" => "justus.kandzi@gmail.com" }
  s.source           = { :git => "https://github.com/jkandzi/Colors.swift.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/justuskandzi'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Colors.swift' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
