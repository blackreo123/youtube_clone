//
//  BaseTapBarController.swift
//  prac_youtubeApp
//
//  Created by JIHA on 2021/09/09.
//

import UIKit

class BaseTapBarController: UITabBarController {
    
    enum ControllerName: Int {
        case home, search, channel, inbox, library
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        viewControllers?.enumerated().forEach({ (index, viewController) in
            
            if let name = ControllerName.init(rawValue: index) {
                switch name {
                case .home:
                    setTabBarInfo(viewController, selectedImageName: "icon-home-selected", unSelectedImageName: "icon-home-unselected", title: "home")
                case .search:
                    setTabBarInfo(viewController, selectedImageName: "icon-search-selected", unSelectedImageName: "icon-search-unselected", title: "search")
                case .channel:
                    setTabBarInfo(viewController, selectedImageName: "icon-content-selected", unSelectedImageName: "icon-content-unselected", title: "subscribe")
                case .inbox:
                    setTabBarInfo(viewController, selectedImageName: "icon-inbox-selected", unSelectedImageName: "icon-inbox-unselected", title: "inbox")
                    
                case .library:
                    setTabBarInfo(viewController, selectedImageName: "icon-library-selected", unSelectedImageName: "icon-library-unselected", title: "library")
                }
            }
        })
    }
    
    private func setTabBarInfo(_ viewController: UIViewController, selectedImageName: String, unSelectedImageName: String, title: String) {
        viewController.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.resize(size: .init(width: 20, height: 20))?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.image = UIImage(named: unSelectedImageName)?.resize(size: .init(width: 20, height: 20))?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.title = title
    }
}
