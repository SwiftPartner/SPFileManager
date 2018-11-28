
# 执行pod spec lint SPFileManager.podspec 确认podspec文件无误

Pod::Spec.new do |s|

  s.name         = "SPFileManager"
  s.version      = "0.0.2"
  s.summary      = "Swift文件管理"

  # Pod描述，要不s.summary的字数多
  s.description  = <<-DESC
  Swift文件管理库，创建、删除、查找、文件路径……便捷文件操作
                   DESC

  s.homepage     = "https://github.com/SwiftPartner"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "ryan" => "mob_developer@163.com" }
  s.social_media_url   = "https://www.jianshu.com/u/ddf4eb832e80"

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.swift_version = '4.2'

  s.source       = { :git => "https://github.com/SwiftPartner/SPFileManager.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"

 # 下面的暂时用不到，需要的时候再订制
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
