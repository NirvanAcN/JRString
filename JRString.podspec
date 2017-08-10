#
#  Be sure to run `pod spec lint JRTest.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name             = "JRString"
s.version          = "1.0.9"
s.summary          = "JRString summary"

s.description      = <<-DESC
1.MD5加密 32位/16位
2.本地图片名
        DESC

s.homepage         = "https://github.com/NirvanAcN/JRString"

s.license          = 'MIT'
s.author           = { "NirvanAcN" => "mahaomeng@gmail.com" }
s.source           = { :git => "https://github.com/NirvanAcN/JRString.git", :tag => s.version }

s.ios.deployment_target = '8.0'
s.platform     = :ios, '8.0'

s.source_files = 'Classes/**/*'

s.dependency 'JREncryption'

end
