//
//  ViewController.swift
//  sampleCatalog
//
//  Created by Beemnet Alemayehu on 12/11/19.
//  Copyright © 2019 Beemnet Alemayehu. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func signUP(_ sender: UIButton) {
        createUser(email: email.text!, password: password.text!)
    }
    
    func createUser(email: String, password: String, _ callback: ((Error?) -> ())? = nil){
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
              if let e = error{
                  callback?(e)
                  print(e, "--")
                  return
              }
              callback?(nil)
          }
    }
    
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
}

