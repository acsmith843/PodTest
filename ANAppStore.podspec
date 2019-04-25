Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "ANAppStore"
s.summary = "A short description of ANAppStore."
s.requires_arc = true

s.version = "0.0.2"

s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Adam C. Smith" => "smitha26@autonation.com" }

s.homepage = 'https://autonation.visualstudio.com/Global/_git/App.Store.iOS.SDK'

s.source = { :git => 'https://autonation.visualstudio.com/Global/_git/App.Store.iOS.SDK', :tag => s.version.to_s }

s.framework = "UIKit"
s.dependency 'Alamofire', '~> 4.7'
s.dependency 'MBProgressHUD', '~> 1.1.0'

s.source_files = "ANAppStore/**/*.{swift}"

s.resources = "ANAppStore/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

s.swift_version = "4.2"

end
