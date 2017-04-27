Pod::Spec.new do |s|
  s.name         = 'TXSortByNameTool'
  s.version      = '0.0.1'
  s.summary      = '按姓名排序(识别多音字)'
  s.description  = <<-DESC
			按姓名排序(识别多音字)—可以自定义任何Model分组
                   DESC
  s.homepage     = 'https://github.com/XTZPioneer/TXSortByNameTool'
  s.license      = 'MIT'
  s.author       = { 'zhangxiong' => 'xtz_pioneer@163.com' }
  s.platform     = :ios
  s.source       = { :git => 'https://github.com/XTZPioneer/TXSortByNameTool.git', :tag => s.version.to_s }
  s.source_files = 'TXSortByNameTool/**/*.{h,m}'
  s.requires_arc = true  
end