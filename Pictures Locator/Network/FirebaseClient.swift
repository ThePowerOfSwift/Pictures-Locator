//
//  FirebaseClient.swift
//  Pictures Locator
//
//  Created by Mihail Șalari on 8/21/16.
//  Copyright © 2016 Mihail Șalari. All rights reserved.
//

import UIKit
import  Firebase

class FirebaseClient: NSObject {

    
    // MARK: - Properties
    
    // Shared instance if FireBase, singleton
    static let sharedInstance = FirebaseClient()
   
    private let reference = FIRDatabase.database().reference(fromURL: APIURL.BaseURL)
   
    
    // MARK: - Initializers
    
    private override init() { super.init() }
    
    
    // MARK: Firebase Create User
    
    func createUserWithName(name: String, Email email: String, andPassword password: String) {
        FIRAuth.auth()?.createUser(withEmail: email, password: password) { [unowned self] (firebaseUser, firebaseError) in
            
            if firebaseError != nil {
                print(firebaseError)
                return
            }
            
            // succesfully authenticated user
            let values = ["name": name, "email": email]
            let userReference = self.reference.child("users")
            
            userReference.updateChildValues(values) { [unowned self] (firebaseError, firebaseReference) in
                if firebaseError != nil {
                    print(firebaseError)
                    return
                }
                print("Saved user succesfully into Firebase db")
            }
        }
    }
}
