//
//  ProfileViewController.swift
//  EpitechEisenhower
//
//  Created by olejniczak on 06/04/2018.
//  Copyright © 2018 Epitech. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descField: UITextView!
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var pswdButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.layer.cornerRadius = 5
        descField.layer.cornerRadius = 5
        mailField.layer.cornerRadius = 5
        pswdButton.layer.cornerRadius = 5
        saveButton.layer.cornerRadius = 5
        logoutButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
        

    }
}
