#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_pangle_ads.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_pangle_ads'
  s.version          = '3.1.4'
  s.summary          = 'FlutterAds 一款优质的 Flutter 广告插件（字节跳动、穿山甲）'
  s.description      = <<-DESC
FlutterAds 致力于构建优质的 Flutter 广告变现插件
                       DESC
  s.homepage         = 'https://flutterads.top'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ZeroFlutter' => '1300326388@qq.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  # 依赖穿山甲广告：https://github.com/CocoaPods/Specs/tree/master/Specs/d/9/8/Ads-CN/
  s.dependency 'Ads-CN','7.1.1.5'
  s.platform = :ios, '11.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
