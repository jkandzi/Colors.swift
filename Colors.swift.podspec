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
  s.social_media_url = 'https://twitter.com/justuskandzi'

  s.platform     = :osx
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Colors.swift' => ['Pod/Assets/*.png']
  }

end
