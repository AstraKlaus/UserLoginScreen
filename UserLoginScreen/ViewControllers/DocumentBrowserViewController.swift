//
//  DocumentBrowserViewController.swift
//  UserLoginScreen
//
//  Created by Андрей Касьянов on 26.07.2022.
//

import UIKit



class DocumentBrowserViewController: UIViewController{
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let person = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if  userNameTF.text != person.userName || passwordTF.text != person.password{
            passwordTF.text = ""
            return
        }
    }
    

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTF.text == person.userName && passwordTF.text == person.password{
            return true
        }else{
            showAlert(title: "Ooops", message: "Incorrect login or password", textField: passwordTF)
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        for viewController in tabBarController.children{
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.currectPerson = person
            }else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.currectPerson = person
            }
        }
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.currectPerson = person
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func showUserData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Login", message: "Correct login in User")
        : showAlert(title: "Password", message: "Correct password is Password")
    }
}

extension DocumentBrowserViewController{
    func showAlert(title: String, message: String, textField: UITextField? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
