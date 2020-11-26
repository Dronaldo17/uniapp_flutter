#
# Be sure to run `pod lib lint UniMPSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UniCoreSDK'
  s.version          = '0.1.0'
  s.summary          = 'UniCoreSDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Uni小程序CoreSDK
                       DESC

  s.homepage         = 'https://github.com/doujingxuan/UniMPSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '窦静轩' => 'doujingxuan@dcloud.io' }
  s.source           = { :git => 'https://github.com/doujingxuan/UniMPSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'UniCoreSDK/Classes/**/*'
  
  # s.resources = 'UniMPSDK/Assets/**/*'

  s.resources = "UniCoreSDK/Assets/**/*"

  s.public_header_files = 'UniCoreSDK/Classes/**/Headers/*.{h.swift}'
  s.vendored_libraries = 'UniCoreSDK/Frameworks/**/*.{a}'
  s.vendored_frameworks = 'UniCoreSDK/Frameworks/**/*.{framework}'
  
  s.frameworks = 'UIKit', 'MapKit','AddressBook','CoreLocation','AssetsLibrary','CoreTelephony','QuickLook','CoreGraphics','QuartzCore','CoreText',
   'OpenGLES','GLKit','AVKit','AVFoundation','MediaPlayer','CoreMedia','JavaScriptCore'

  s.libraries = "c++"
  s.swift_version = '4.0'
  s.dependency 'Flutter'


  # framework要加preserve_paths 预加载路径
  s.preserve_paths = "UniCoreSDK/Classes/**/Frameworks/*.{framework,a}"

  s.prepare_command = <<-PREPARE_COMMAND_END
  cd UniCoreSDK/Frameworks/UniWeex

  if [ -s "./liblibWeex.a" ]; then
    echo ""
  else
    echo "Download UniCoreSDK"
    curl -O http://192.168.12.138:5000/liblibWeex.a
  fi

  PREPARE_COMMAND_END


  # spec.xcconfig = { "OTHER_LINK_FLAG" => '$(inherited) -ObjC' }

  # s.dependency 'AFNetworking', '~> 2.3'


  # 因为git 限制静态库文件大小为100m,所以建议拆包 后 合并或者 直接cdn下载超过100m的包

  # 三种解决方案
  # 1. git lfs (受限制的第三方因素过多,涉及上传和下载 无法下载OK)
  # 2. 拆分 .a 库  devices和x86_64 拆后目前均小于100 也可以完成需求
  # 3. 使用 CocoaPods 的s.prepare_command curl 一个远程.a 到本工程
  

  # cd UniMPSDK/Frameworks/UniWeex
  # pwd
  # file = "/liblibWeex.a"
  # if [ ! -x "$file"]; then
  #   lipo -create liblibWeex_x86_64.a liblibWeex_device.a -output liblibWeex.a
  #   rm -rf liblibWeex_device.a
  #   rm -rf liblibWeex_x86_64.a
  # fi






# http://192.168.12.138:5000/liblibWeex.a


end
