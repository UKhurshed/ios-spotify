//
//  GreetingViewController.swift
//  spotify
//
//  Created by Khurshed Umarov on 29.12.2021.
//

import UIKit

class GreetingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
    
    }
    
    @IBAction func logInButton(_ sender: Any) {
        let authVC = AuthViewController()
        authVC.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        authVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(authVC, animated: true) 
    }
    
    private func handleSignIn(success: Bool){
        guard success else{
            let alert = UIAlertController(title: "Oops", message: "Something went wrong when signing in.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert, animated: true)
            return
        }
        
        let mainTabBarVC = TabBarViewController()
        mainTabBarVC.modalPresentationStyle = .fullScreen
        present(mainTabBarVC, animated: true)
        
    }
    
}
