
Pod::Spec.new do |s|

  s.name         = 'S2AppKit.swift'
  s.version      = '3.0.0'
  s.summary      = 'S2AppKit is a SDK extension. wrapping library.'
  s.description  = <<-DESC
S2AppKit is a application framework. if use then very very happpy!
DESC
  s.homepage     = 'http://github.com/straightspirits/S2AppKit-ios.swift'
  s.source       = { :git => 'https://github.com/straightspirits/S2AppKit-ios.git', :tag => 'v' + s.version.to_s() }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Fumio Furukawa' => 'fumio@straight-spirits.com' }
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.default_subspec = 'Core';

  s.subspec 'Core' do |ss|
    ss.source_files  = '{Application,Foundation,Networking,Services,Text,UICase,UIKit,ZipArchive}/*.{h,m}', 'ZipArchive/minizip/*.{h,c}'
    ss.library   = 'z'
    ss.dependency 'SVProgressHUD', '~> 1.0'
  end

  s.subspec 'iAd' do |ss|
    ss.dependency 'S2AppKit/Core'
    ss.source_files = 'iAd/*.{h,m}'
    ss.frameworks = 'iAd'
  end

#  s.subspec 'AdMob' do |ss|
#    ss.source_files = 'iAd/*.{h,m}'
#    ss.dependency 'AdMob'
#  end

  s.subspec 'Networking' do |ss|
    ss.dependency 'AFNetworking', '~> 2.0'
  end

end
