Pod::Spec.new do |s|
  s.name = 'Colors.swift'
  s.version = '0.1.1'
  s.license = 'MIT'
  s.summary = 'Add colors to your swift command line tools.'
  s.description = <<-DESC
                    Add colors to your swift command line tools. Specify background color, foreground color and styles on your terminal outputs.
                  DESC
  s.platform = :osx
  s.homepage = 'https://github.com/jkandzi/Colors.swift'
  s.social_media_url = 'http://twitter.com/justuskandzi'
  s.authors = { 'Justus Kandzi' => "jusus.kandzi@gmail.com" }
  s.source = { :git => 'https://github.com/jkandzi/Colors.swift.git', :tag => s.version }
  s.source_files = 'Sources/*.swift'
  s.requires_arc = true
  s.osx.deployment_target = "10.9"
  s.module_name = 'Progress'
end
