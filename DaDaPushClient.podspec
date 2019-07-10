Pod::Spec.new do |s|
  s.name = 'DaDaPushClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '1.0.0'
  s.source = https://github.com/dadapush/dadapush-swift-client.git
  s.authors = 'DaDaPush.com'
  s.license = Apache 2.0
  s.homepage = 'https://www.dadapush.com'
  s.summary = 'DaDaPush Client For Swift4'
  s.documentation_url = 'https://www.dadapush.com/documentation'
  s.source_files = 'DaDaPushClient/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.7.0'
end
