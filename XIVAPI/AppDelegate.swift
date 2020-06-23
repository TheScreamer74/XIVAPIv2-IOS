// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/16/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit
import Swinject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    private let theme = AppTheme()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        theme.apply()
        
        return true
    }

}

// MARK: - Dependency injection

extension AppDelegate {
    
    private static let assembler = Assembler([
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
