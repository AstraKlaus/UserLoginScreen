//
//  AboutMeViewController.swift
//  UserLoginScreen
//
//  Created by Андрей Касьянов on 31.07.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    var currectPerson: Person!
    
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "🧑‍💻"
        navigationItem.title = currectPerson.name
        descriptionLabel.text = currectPerson.description
        profileImage.image = UIImage(named: "guitar1")
    }

}
