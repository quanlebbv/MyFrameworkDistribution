require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.author       = { 'Name' => 'info@example.com' }
  s.license      = { :type => 'Custom', :file => 'LICENSE' }
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
