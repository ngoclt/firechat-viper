# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

def testing_pods
    pod 'Quick'
    pod 'Nimble'
    pod 'OHHTTPStubs'
    pod 'OHHTTPStubs/Swift'
end

def app_pods
    pod 'Firebase/Core'
    pod 'FirebaseUI/Auth'
    pod 'FirebaseUI/Google'
    pod 'FirebaseUI/Facebook'
    
    pod 'MessageKit'
    pod 'SVProgressHUD'
end


target 'FireChat' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  app_pods
  
  target 'FireChatTests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end

end
