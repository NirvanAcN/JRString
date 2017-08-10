#
#  Be sure to run `pod spec lint JRTest.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name             = "JRString"
s.version          = "1.0.8"
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

s.preserve_paths = 'CocoaPods/**/*'
s.pod_target_xcconfig = {
#'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/JRString/CocoaPods/macosx',
'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/JRString/CocoaPods/iphoneos',
#'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/JRString/CocoaPods/iphonesimulator',
#'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/JRString/CocoaPods/appletvos',
#'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/JRString/CocoaPods/appletvsimulator',
#'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/JRString/CocoaPods/watchos',
#'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/JRString/CocoaPods/watchsimulator'
}

#s.user_target_xcconfig = {
#'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/JRString/CocoaPods/macosx',
#'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/JRString/CocoaPods/iphoneos',
#'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/JRString/CocoaPods/iphonesimulator',
#'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/JRString/CocoaPods/appletvos',
#'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/JRString/CocoaPods/appletvsimulator',
#'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/JRString/CocoaPods/watchos',
#'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/JRString/CocoaPods/watchsimulator'
#}

end
