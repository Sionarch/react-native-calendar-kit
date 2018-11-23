
Pod::Spec.new do |s|
  s.name         = "RNCalendarKit"
  s.version      = "1.0.0"
  s.summary      = "RNCalendarKit"
  s.description  = <<-DESC
                  RNCalendarKit
                   DESC
  s.homepage     = "https://github.com/Sionarch/react-native-calendar-kit"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/Sionarch/react-native-calendar-kit.git", :tag => "master" }
  s.source_files  = "RNCalendarKit/**/*.{h,m,swift}"
  s.requires_arc = true
  s.static_framework = true


  s.dependency "React"
  #s.dependency "others"

end

