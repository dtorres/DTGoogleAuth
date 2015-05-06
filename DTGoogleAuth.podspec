Pod::Spec.new do |s|
  s.name             = "DTGoogleAuth"
  s.version          = "0.1.0"
  s.summary          = "Simple authentication with google credentials"
  s.homepage         = "https://github.com/dtorres/DTGoogleAuth"
  s.license          = 'MIT'
  s.author           = { "Diego Torres" => "contact@dtorres.me" }
  s.source           = { :git => "https://github.com/dtorres/DTGoogleAuth.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/dtorres'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.ios.deployment_target = '8.0'
    ss.osx.deployment_target = '10.10'
    
    ss.source_files = 'Classes/*.{h,m}'
    ss.frameworks = 'Accounts'
  end
  
  s.subspec 'NoNSURLQueryItems' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.osx.deployment_target = '10.9'
    ss.dependency 'CMDQueryStringSerialization'
    
    ss.source_files = 'Classes/*.{h,m}'
    ss.frameworks = 'Accounts'
  end
end