#
# Be sure to run `pod lib lint LXToolsModules.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LXToolsModules'
  s.version          = '0.1.0'
  s.summary          = 'OC项目常用工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC

该项目基于 为常用的工具类文件的总结，等等
                       DESC

  s.homepage         = 'https://github.com/Rayshawn'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ccsxlx@163.com' => 'lei.xiangxiang@yinchengku.com' }
  s.source           = { :git => 'https://github.com/Rayshawn/LXModules.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LXToolsModules/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LXToolsModules' => ['LXToolsModules/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
