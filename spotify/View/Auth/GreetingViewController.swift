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
        
    }
    
}
