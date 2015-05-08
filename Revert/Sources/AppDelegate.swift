//
//  Copyright (c) 2015 Itty Bitty Apps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  private var splitViewControllerDelegate = SplitViewControllerDelegate()
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    self.splitViewControllerDelegate.configureSplitViewController(self.window!.rootViewController as! UISplitViewController)
    self.dynamicType.configureAppearance()
    return true
  }
  
  private class func configureAppearance() {
    UITabBar.appearance().tintColor = UIColor.revertTintColor()
    UINavigationBar.appearance().barTintColor = UIColor.revertBlueColor()
  }
}
