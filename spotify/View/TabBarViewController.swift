//
//  TabBarViewController.swift
//  spotify
//
//  Created by Khurshed Umarov on 29.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        let searchVC = SearchViewController()
        let libraryVC = LibraryViewController()
        
        homeVC.title = "Browse"
        searchVC.title = "Search"
        libraryVC.title = "Library"
        
        homeVC.navigationItem.largeTitleDisplayMode = .always
        searchVC.navigationItem.largeTitleDisplayMode = .always
        libraryVC.navigationItem.largeTitleDisplayMode = .always
        
        let navHome = UINavigationController(rootViewController: homeVC)
        let navSearch = UINavigationController(rootViewController: searchVC)
        let navLibrary = UINavigationController(rootViewController: libraryVC)
        
        navHome.navigationBar.prefersLargeTitles = true
        navSearch.navigationBar.prefersLargeTitles = true
        navLibrary.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navHome, navSearch, navLibrary], animated: false)
    }

}
