require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.source = { :path => '.' }
  s.platform     = :ios, '13.0'
  s.swift_version = '5.3'
  s.source       = { :git => "https://github.com/quanlebbv/MyFramework.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '10.0'
  vendored_frameworks = "MyFramework.xcframework"
end
