require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.author       = { 'Name' => 'info@example.com' }
  s.license      = { :type => 'Custom', :file => 'LICENSE' }

  s.platform     = :ios
  s.swift_version = '5.3'
  s.source       = { :path => '.' }
  s.ios.deployment_target = '10.0'
  vendored_frameworks = "MyFramework.xcframework"
end
