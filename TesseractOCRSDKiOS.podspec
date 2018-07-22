Pod::Spec.new do |s|
  s.header_dir		        = 'TesseractOCRSDKiOS'
  s.name                    = 'TesseractOCRSDKiOS'
  s.version                 = '4.0.2'

  s.summary                 = 'Use Tesseract OCR in iOS projects written in either Objective-C or Swift.'

  s.homepage                = 'https://github.com/msgrizz/TesseractOCRSDKiOS'
  s.documentation_url       = 'https://github.com/msgrizz/TesseractOCRSDKiOS/blob/master/README.md'

  s.license                 = { :type => 'MIT',
                                :file => 'LICENSE.md' }

  s.authors                 = { 'Mister Grizzly Official' => 'hi@mistergrizzly.com' }

  s.source                  = { :git => 'https://github.com/msgrizz/TesseractOCRSDKiOS.git', :tag => s.version.to_s }

  s.platform                = :ios, "8.1"
  s.source_files            = 'TesseractOCRSDKiOS/*.{h,m,mm}', 'TesseractOCRSDKiOS/include/**/*.h'
  s.private_header_files    = 'TesseractOCRSDKiOS/include/**/*.h'
  s.requires_arc            = true
  s.frameworks              = 'UIKit', 'Foundation'

  s.ios.deployment_target   = "7.0"
  s.ios.vendored_library    = 'TesseractOCRSDKiOS/lib/*.a'
  s.xcconfig                = { 'OTHER_LDFLAGS' => '-lstdc++ -lz',
                                'CLANG_CXX_LIBRARY' => 'compiler-default' }

end
