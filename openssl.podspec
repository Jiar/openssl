Pod::Spec.new do |s|
  
  $filename
  if $filename.nil?
    $filename = File.basename(__FILE__).split('.').at(0)
  end
  
  s.name = $filename
  s.version = '1.0.2r'
  s.summary = 'openssl'

  s.homepage = 'https://github.com/Jiar/openssl'
  s.license = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author = { 'Jiar' => 'iiimjiar@gmail.com' }
  s.social_media_url = 'https://github.com/Jiar'

  s.source = { :git => 'https://github.com/Jiar/openssl.git', :tag => "#{s.version}" }
  s.module_name = 'openssl'

  s.ios.deployment_target   = '8.0'
  s.ios.module_map          = 'modules/module.modulemap'
  s.ios.public_header_files = 'headers/*.h'
  s.ios.source_files        = 'headers/*.h', 'modules/module.modulemap'
  s.ios.vendored_libraries  = 'openssl-ios/lib/libcrypto.a', 'openssl-ios/lib/libssl.a'
  s.ios.preserve_paths      = 'openssl-ios/lib/libcrypto.a', 'openssl-ios/lib/libssl.a', 'headers/*.h', 'modules/module.modulemap'

  s.osx.deployment_target   = '10.10'
  s.osx.module_map          = 'modules/module.modulemap'
  s.osx.public_header_files = 'headers/*.h'
  s.osx.source_files        = 'headers/*.h', 'modules/module.modulemap'
  s.osx.vendored_libraries  = 'openssl-macos/lib/libcrypto.a', 'openssl-macos/lib/libssl.a'
  s.osx.preserve_paths      = 'openssl-macos/lib/libcrypto.a', 'openssl-macos/lib/libssl.a', 'headers/*.h', 'modules/module.modulemap'

  s.tvos.deployment_target   = '9.0'
  s.tvos.module_map          = 'modules/module.modulemap'
  s.tvos.public_header_files = 'headers/*.h'
  s.tvos.source_files        = 'headers/*.h', 'modules/module.modulemap'
  s.tvos.vendored_libraries  = 'openssl-tvos/lib/libcrypto.a', 'openssl-tvos/lib/libssl.a'
  s.tvos.preserve_paths      = 'openssl-tvos/lib/libcrypto.a', 'openssl-tvos/lib/libssl.a', 'headers/*.h', 'modules/module.modulemap'

  s.requires_arc = true
  s.static_framework = true
  
end
