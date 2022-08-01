Pod::Spec.new do |s|
  s.name         = 'my-framework'
  s.version      = '1.0.39'
  s.summary      = 'abc'
  s.homepage     = 'xyz'
  s.author       = { 'Name' => 'info@example.com' }
  s.license      = { :type => 'Commercial', :text => 'See https://myframework.license.com' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.platform     = :ios
  s.swift_version = '5.3'
  s.source       = { :git => "git@github.com:quanlebbv/MyFrameworkDistribution.git", :tag => s.version.to_s }
  s.exclude_files = ['./source/**']
  s.ios.deployment_target = '10.0'
  s.ios.preserve_paths = 'MyFramework.xcframework'
  s.ios.vendored_frameworks = 'MyFramework.xcframework'
end
