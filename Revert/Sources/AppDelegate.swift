//
//  Copyright © 2015 Itty Bitty Apps. All rights reserved.

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    guard let splitViewController = self.window?.rootViewController as? UISplitViewController else {
      fatalError("Root view controller should always be a `UISplitViewController`")
    }
    self.splitViewControllerDelegate.configureSplitViewController(splitViewController)

    type(of: self).configureAppearance()

    return true
  }

  // MARK: Private

  // swiftlint:disable weak_delegate
  private var splitViewControllerDelegate = SplitViewControllerDelegate()
  // swiftlint:enable weak_delegate

  private static func configureAppearance() {
    UITabBar.appearance().tintColor = .revertTint
    UINavigationBar.appearance().barTintColor = .revertTint
  }
}
