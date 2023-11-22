//
//  MainTabBarControllerViewController.swift
//  zd1
//
//  Created by Герман Яренко on 20.11.23.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTabBarApperance()
        // Do any additional setup after loading the view.
    }
    
    func generateTabBar() {
        viewControllers = [
            generateVC(viewController:UINavigationController(rootViewController: FriendViewController()), title : "Friend" , image : UIImage(systemName: "person")),
            generateVC(viewController:UINavigationController(rootViewController: GroupViewController()), title: "Group", image: UIImage(systemName: "house")),
            generateVC(viewController:UINavigationController(rootViewController: PhotoViewController()), title: "Photo", image: UIImage(systemName: "photo"))
            
        ]
        
    }
    private func generateVC(viewController: UIViewController,title: String ,image : UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
       return viewController
    }
    private func setTabBarApperance() {
        let positionX: CGFloat = 10
        let positionY: CGFloat = 14
        let width = tabBar.bounds.width - positionX * 2
        let height = tabBar.bounds.height + positionY * 2
        let roundLayer  = CAShapeLayer()
        
        let bezierPath = UIBezierPath(roundedRect: CGRect(x: positionX, y: tabBar.bounds.minY - positionX, width: width, height: height),
                                      cornerRadius: height / 2)
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
    }
}



