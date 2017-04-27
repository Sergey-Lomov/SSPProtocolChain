Pod::Spec.new do |s|
  s.name             = 'SSPProtocolChain'
  s.version          = '0.1.2'
  s.summary          = 'Protocol chain classes'

  s.description      = <<-DESC
This classes provide possibility to handle protocol calls by more than one recepients
                       DESC

  s.homepage         = 'https://github.com/Sergey-Lomov/SSPProtocolChain'
  s.author           = { 'Sergey Lomov' => 'SSpirit10000@gmail.com' }
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/Sergey-Lomov/SSPProtocolChain.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.source_files = '**/*.swift'

end
