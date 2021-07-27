#
# Be sure to run `pod lib lint TopOnTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TopOnTest'
  s.version          = '0.1.0'
  s.summary          = '测试可不吗'
  s.description      = <<-DESC
  试一下看看行不系啊,好幸福那么安排单点的点滴潘多拉到哪啦么安排单点的点滴潘多么安排单点的点滴潘多么安排单点的点滴潘多
                       DESC
  s.homepage         = 'https://github.com/GPPG/repeat_test.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GUO PENG' => 'ios' }
  s.source           = { :git => 'https://github.com/GPPG/repeat_test.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.static_framework = true
  
  s.requires_arc = true

  s.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  
  s.pod_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  
  s.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64' }
  
  s.default_subspecs = 'AnyThinkSDKTT'

  s.subspec 'AnyThinkSDKTT' do |ss|
    ss.ios.deployment_target = '9.0'
  ss.vendored_frameworks = 'AnyThinkiOS/AnyThink{Banner,Splash,SDK,RewardedVideo,Interstitial,Native}.framework'
      ss.resource = 'AnyThinkiOS/AnyThinkSDK.bundle'
  end
  
end
