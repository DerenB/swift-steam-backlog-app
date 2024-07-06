//
//  SceneDelegate.swift
//  steamBackLog
//
//  Created by Deren Bozer on 7/2/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        /// Initialize UI Window
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        window?.windowScene = windowScene
        
        /// Set Root View Controller
        window?.rootViewController = createTabbar()
        window?.makeKeyAndVisible()
        
        /// Configure Navigation Bar
        configureNavigationBar()
    }
    
    
    /// View Controller for AllGamesVC
    func createAllGamesVC() -> UINavigationController {
        /// Create Instance of VC
        let allGamesVC = AllGamesVC()
        
        /// Create the Image String
        let iconImage = UIImage(systemName: "gamecontroller.fill")
        
        /// Set Title for VC
        allGamesVC.title = "All Games"
        
        /// Set the Icon
        /// Set the position (order) within the navbar
        allGamesVC.tabBarItem = UITabBarItem(title: "All Games", image: iconImage, tag: 0)
        
        /// Return the VC
        return UINavigationController(rootViewController: allGamesVC)
    }
    
    
    /// View Controller for BacklogVC
    func createBacklogVC() -> UINavigationController {
        let backlogVC = BacklogVC()
        
        let iconImage = UIImage(systemName: "list.clipboard.fill")
        
        backlogVC.title = "Backlog Titles"
        
        backlogVC.tabBarItem = UITabBarItem(title: "Backlog", image: iconImage, tag: 1)
        
        return UINavigationController(rootViewController: backlogVC)
    }
    
    
    /// View Controller for InProgressVC
    func createInProgressVC() -> UINavigationController {
        let inProgressVC = InProgressVC()
        
        let iconImage = UIImage(systemName: "figure.walk.circle.fill")
        
        inProgressVC.title = "Games in Progress"
        
        inProgressVC.tabBarItem = UITabBarItem(title: "In Progress", image: iconImage, tag: 2)
        
        return UINavigationController(rootViewController: inProgressVC)
    }
    
    
    /// View Controller for SettingsVC
    func createSettingsVC() -> UINavigationController {
        let settingsVC = SettingsVC()
        
        let iconImage = UIImage(systemName: "gear")
        
        settingsVC.title = "Settings"
        
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: iconImage, tag: 2)
        
        return UINavigationController(rootViewController: settingsVC)
    }
    
    
    /// Create the Tab Bar
    func createTabbar() -> UITabBarController {
        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemRed
        tabBar.viewControllers = [createAllGamesVC(), createBacklogVC(), createInProgressVC(), createSettingsVC()]
        
        return tabBar
    }
    
    
    /// Sets the Navigation Bar color across the whole app
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemRed
    }
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

