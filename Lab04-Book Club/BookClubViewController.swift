//
//  BookClubViewController.swift
//  Lab04-Book Club
//
//  Created by William Wilson on 2/15/21.
//

import UIKit

class BookClubViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = User()
                
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

        let secondViewController = Books()

        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        let thirdViewController = ClubInfo()
        
        thirdViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)

        let tabBarList = [firstViewController, secondViewController, thirdViewController]

        viewControllers = tabBarList

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
