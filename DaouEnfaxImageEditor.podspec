Pod::Spec.new do |s|
  s.name             = 'DaouEnfaxImageEditor'
  s.version          = '1.0.9'
  s.summary          = 'DaouEnfaxImageEditor'

  s.homepage         = 'https://github.com/DaouMobile/DaouEnfaxImageEditor'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daou TECH' => 'daoumobile8707@gmail.com' }
  s.source           = { :git => 'https://github.com/DaouMobile/DaouEnfaxImageEditor.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'

  s.source_files = 'Sources/**/*.swift'
  s.resources = 'Sources/**/Resource/*'
  
  s.frameworks = 'UIKit', 'Vision'
  s.dependency 'DaouGeometry2D'
  s.dependency 'RxSwift'
  s.dependency 'RxRelay'
  s.dependency 'RxCocoa'
  s.dependency 'RxGesture'
  s.dependency 'SnapKit'
end
