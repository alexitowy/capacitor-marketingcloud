require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'OkodeCapacitorMarketingcloud'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '15.0'
  s.dependency 'Capacitor', '~> 8.0'
  s.dependency 'MarketingCloudSDK', '~> 8.0.13'
  s.swift_version = '5.9'
end
