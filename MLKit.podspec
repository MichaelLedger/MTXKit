Pod::Spec.new do |s|
  s.name         = "MLKit"
  s.version      = "0.0.1"
  s.summary      = "A collection of iOS components."
  s.description  = <<-DESC
                   A collection of iOS components, hope you like it!
                   DESC
  s.homepage     = "https://github.com/MichaelLedger/MLKit.git"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "MichaelLedger" => "MichaelLedger@163.com" }
  s.platform     = :ios, "6.0"
  s.ios.deployment_target = "6.0"

  s.source       = { :git => "https://github.com/MichaelLedger/MLKit.git", :tag => "#{s.version}" }
  s.source_files  = "MLKit/**/*.{h,m}"
  s.public_header_files = "MLKit/**/*.h"

  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'
  s.ios.vendored_frameworks = 'Vendor/WebP.framework'

  s.libraries = 'z', 'sqlite3'

  s.requires_arc = true
  
  non_arc_files = ''
  s.ios.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sna|
    sna.requires_arc = false
    sna.source_files = non_arc_files
  end

end
