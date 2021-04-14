//
//  MMITabBarController.swift
//  Gupta
//
//  Created by Ashish Gupta on 11/04/21.
//

import UIKit

enum MMITab: Int {
    case task = 0
    case finance = 1
    case health = 2
    case growth = 3
    case more = 4
}


class MMITabBarController: UITabBarController, UITabBarControllerDelegate {
    
    lazy var taskVC: UIViewController = {
        let vc = TaskVC()
        vc.view.backgroundColor = .systemBackground
        vc.tabBarItem = UITabBarItem.init(title: "Task",
                                          image: UIImage.init(named: "task_tab_icon"),
                                          tag: MMITab.finance.rawValue)
        return vc
    }()
    
    lazy var taskNavVC: UINavigationController = {
        let navVC = UINavigationController(rootViewController: taskVC)
        navVC.clearNavigationBar()
        return navVC
    }()
    
    lazy var growthhVC: UIViewController = {
        let vc = GrowthVC()
        vc.view.backgroundColor = .systemBackground
        vc.tabBarItem = UITabBarItem.init(title: "Growth",
                                          image: UIImage.init(named: "growth_tab_icon"),
                                          tag: MMITab.finance.rawValue)
        return vc
    }()
    
    lazy var growthNavVC: UINavigationController = {
        let navVC = UINavigationController(rootViewController: growthhVC)
        navVC.clearNavigationBar()
        return navVC
    }()
    
    lazy var financeVC: UIViewController = {
        let vc = FinanceVC()
        vc.view.backgroundColor = .systemBackground
        vc.tabBarItem = UITabBarItem.init(title: "Finance",
                                          image: UIImage.init(named: "finance_tab_icon"),
                                          tag: MMITab.finance.rawValue)
        return vc
    }()
    
    lazy var financeNavVC: UINavigationController = {
        let navVC = UINavigationController(rootViewController: financeVC)
        navVC.clearNavigationBar()
        return navVC
    }()
    
    lazy var healthVC: UIViewController = {
        let vc = HealthVC()
        vc.view.backgroundColor = .systemBackground
        vc.tabBarItem = UITabBarItem.init(title: "Health",
                                          image: UIImage.init(named: "health_tab_icon"),
                                          tag: MMITab.health.rawValue)
        return vc
    }()
    
    lazy var healthNavVC: UINavigationController = {
        let navVC = UINavigationController(rootViewController: healthVC)
        navVC.clearNavigationBar()
        return navVC
    }()
    
    lazy var moreVC: UIViewController = {
        let vc = UIViewController()
        vc.view.backgroundColor = .systemBackground
        vc.tabBarItem = UITabBarItem.init(tabBarSystemItem: .more, tag: MMITab.more.rawValue)
        return vc
    }()
    
    lazy var moreNavVC: UINavigationController = {
        let navVC = UINavigationController(rootViewController: moreVC)
        navVC.clearNavigationBar()
        return navVC
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeTabBar()
        self.delegate = self
        self.viewControllers = [taskNavVC,financeNavVC,healthNavVC,growthNavVC,moreNavVC]
        
        var testVC = UIViewController()
        testVC.view.backgroundColor = UIColor.red
        DispatchQueue.main.async {
            self.present(testVC, animated: true, completion: nil)
        }
    }

    func cleanUpStack(animation: Bool, completion: (()->())? = nil) {
        financeNavVC.topViewController?.dismiss(animated: animation, completion: nil)
        financeNavVC.popToRootViewController(animated: animation)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            completion?()
        }
    }
}
