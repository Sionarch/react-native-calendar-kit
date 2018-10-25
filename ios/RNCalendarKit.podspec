
Pod::Spec.new do |s|
  s.name         = "RNCalendarKit"
  s.version      = "1.0.0"
  s.summary      = "RNCalendarKit"
  s.description  = <<-DESC
                  RNCalendarKit
                   DESC
  s.homepage     = "http://norsu.se/"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNCalendarKit.git", :tag => "master" }
  s.source_files  = "RNCalendarKit/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

