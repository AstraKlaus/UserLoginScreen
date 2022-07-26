//
//  DocumentBrowserViewController.swift
//  UserLoginScreen
//
//  Created by Андрей Касьянов on 26.07.2022.
//

import UIKit

let userName = "User"
let password = "Password"


class DocumentBrowserViewController: UIViewController{
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if  userNameTF.text != userName || passwordTF.text != password{
            passwordTF.text = ""
            return
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        userNameTF.text == userName && passwordTF.text == password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        guard let name = userNameTF.text else { return }
        welcomeVC.userName = "Hello, \(name)"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

