Pod::Spec.new do |s|
  s.name             = "MBTextFieldWithInputValidator"
  s.version          = "0.2.0"
  s.summary          = ""

  s.homepage         = "https://github.com/mmoaay/MBTextFieldWithInputValidator"
  s.license          = 'MIT'
  s.author           = { "mmoaay" => "mmoaay@sina.com" }
  s.source           = { :git => "https://github.com/mmoaay/MBTextFieldWithInputValidator.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MBTextFieldWithInputValidator/Classes/**/*'
end
