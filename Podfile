# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

target 'MainProject' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  use_modular_headers!

  # Pods for MainProject
  
  # 本地组件pod
  pod "A_Category", :path => "../A_Category"
  pod "A", :path => "../A"
  
  # pod
  pod 'CTMediator'
  

  target 'MainProjectTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MainProjectUITests' do        # Pods for testing
  end

end
