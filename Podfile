source 'https://github.com/CocoaPods/Specs.git'

use_frameworks!
project './Example.xcodeproj'

def common_pods
  pod 'openssl', :path => './'
end

target 'Example-iOS' do
  platform :ios, '8.0'
  common_pods
end

target 'Example-macOS' do
  platform :osx, '10.10'
  common_pods
end

target 'Example-tvOS' do
  platform :tvos, '9.0'
  common_pods
end