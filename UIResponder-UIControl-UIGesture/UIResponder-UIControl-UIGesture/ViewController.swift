//
//  ViewController.swift
//  UIResponder-UIControl-UIGesture
//
//  Created by 辉 on 2020/9/18.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createViewControllers()
    }
    
    func createViewControllers() {

        let vcArray = [UIResponderView(), UIGesture()]
        let titleArray = ["响应链", "手势"]
        var viewControllers = [UINavigationController]()
        let imagesNor = [UIImage(named: "home-normal")]
        let imagesSec = [UIImage(named: "home-selected")]
        
        for i in 0..<vcArray.count {
            let nav = UINavigationController.init(rootViewController: vcArray[i])
            nav.title = titleArray[i]

            let tabItem = UITabBarItem.init(title: titleArray[i], image: imagesNor[0], selectedImage: imagesSec[0])
            nav.tabBarItem = tabItem
            tabItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 12), .foregroundColor: UIColor.black], for: .normal)
            tabItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 16), .foregroundColor: UIColor.orange], for: .selected)
            viewControllers.append(nav)
            
        }
        self.viewControllers = viewControllers
    }

}

