// 
//  lpaandco
//
//  Created by MyLuckyDay on 3/30/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit
import Swinject
import Firebase
import GoogleMaps
import GooglePlaces
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let theme = AppTheme()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        theme.apply()
        setupKeyboardManager()
        
        FirebaseApp.configure()
        
        GMSServices.provideAPIKey("AIzaSyCYPMnKhmhNUzTUzwlOvgg3XYsyMGRBB3s")
        GMSPlacesClient.provideAPIKey("AIzaSyCYPMnKhmhNUzTUzwlOvgg3XYsyMGRBB3s")
        
        return true
    }
}

extension AppDelegate {
    static var shared: AppDelegate {
        guard let deleg = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("""
                Failed to cast shared application delegate to AppDelegate class. Make sure you are executing the right application
                """
            )
        }
        return deleg
    }
}

// MARK: - Dependency injection

extension AppDelegate {
    
    private static let assembler = Assembler([
        AppAssembly(),
        ParkingAssembly(),
        AnalyticsAssembly()
    ])
    
    /**
     Use this to resolve more complicated dependencies
     */
    static var resolver: Resolver {
        assembler.resolver
    }
    
    /**
     Helper function to resolve parameter-less dependencies
     */
    class func resolve<Service>(_ serviceType: Service.Type) -> Service? {
        assembler.resolver.resolve(serviceType)
    }
    
}

extension AppDelegate {
    
    private func setupKeyboardManager() {
        let keyboardManager = IQKeyboardManager.shared
        keyboardManager.enable = true
        keyboardManager.shouldPlayInputClicks = false
    }
}
