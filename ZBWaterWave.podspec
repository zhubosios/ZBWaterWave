
Pod::Spec.new do |s|

  s.name         = "ZBWaterWave"
  s.version      = "0.0.1"
  s.summary      = "A short description of ZBWaterWave."
  s.description  = <<-DESC
                           ZBWaterWave 是一个水波纹动画
                   DESC
  s.homepage     = "https://github.com/zhubosios/ZBWaterView.git"

  s.license      = "MIT"

  s.author             = { "zhubo" => "2370233465@qq.com" }

  s.source       = { :git => "https://github.com/zhubosios/ZBWaterView.git", :tag => "0.0.1" }

  s.source_files  = "ZBwaterWaveDemo/ZBwaterWaveDemo/ZBWaterView/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.ios.deployment_target = '7.0'

end
