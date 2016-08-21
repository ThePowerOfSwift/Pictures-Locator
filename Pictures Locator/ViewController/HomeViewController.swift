//
//  HomeViewController.swift
//  Pictures Locator
//
//  Created by Mihail Șalari on 8/16/16.
//  Copyright © 2016 Mihail Șalari. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    // MARK: - Navigation

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //let ref = FIRDatabase.database().reference(fromURL: APIURL.BaseURL)
        //ref.updateChildValues(["someValue": 123123])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - IBAction's
    
    @IBAction func loginButtonpressed(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: Constants.HomeViewController.SegueLoginViewController, sender: nil)
    }
    
    @IBAction func syncButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    
}
