//
//  LoginViewController.swift
//  Pictures Locator
//
//  Created by Mihail Șalari on 8/16/16.
//  Copyright © 2016 Mihail Șalari. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    // MARK: - Lyfe Cicle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - IBAction's
    
    @IBAction func loginAndRegisterSegmentControl(_ sender: UISegmentedControl) {
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        self.handleRegisterUser()
    }
    
    
    // MARK: - Firebase Aouth
    
    func handleRegisterUser() {
        
        guard let name = nameTextField.text,
                let email = emailTextField.text,
                let password = passwordTextField.text else {
                    print("Form are not valid.")
                    return
        }
        
        FirebaseClient.sharedInstance.createUserWithName(name: name, Email: email, andPassword: password)
    }
}
