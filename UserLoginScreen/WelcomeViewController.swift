//
//  WelcomeViewController.swift
//  UserLoginScreen
//
//  Created by Андрей Касьянов on 26.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }
}
