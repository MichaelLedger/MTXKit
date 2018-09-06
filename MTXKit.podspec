Pod::Spec.new do |s|
  s.name         = "MTXKit"
  s.version      = "0.0.1"
  s.summary      = "A collection of iOS components."
  s.description  = <<-DESC
                   A collection of iOS components, hope you like it!
                   DESC
  s.homepage     = "https://github.com/MichaelLedger/MTXKit.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "MichaelLedger" => "MichaelLedger@163.com" }
  s.platform     = :ios, "6.0"
  s.ios.deployment_target = "6.0"

  s.source       = { :git => "https://github.com/MichaelLedger/MTXKit.git", :tag => "#{s.version}" }
  s.source_files  = "MTXKit/**/*.{h,m}"
  s.public_header_files = "MTXKit/**/*.h"

  s.libraries = 'z', 'sqlite3'

  s.requires_arc = true

end
