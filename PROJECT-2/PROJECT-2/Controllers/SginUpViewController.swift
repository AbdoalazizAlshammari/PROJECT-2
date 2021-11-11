//
//  SginUpViewController.swift
//  PROJECT-2
//
//  Created by Mac on 08/11/2021.
//

import UIKit

class SginUpViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var middleName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func signUp(_ sender: Any) {
        
        let firstName = firstName.text
        let middleName = middleName.text
        let lastName = lastName.text
        let userName = userName.text
        let email = email.text
        let phoneNumber = phoneNumber.text
        let address = address.text
        let userPassword = userPassword.text
        

        
        if firstName != nil && middleName != nil && lastName != nil && userName != nil && email != nil && phoneNumber != nil && address != nil && userPassword != nil {
            
            DisplayAlert(withTitle: "Signup successful", message: "", isSginup: true)
            
            
        
        
        }else{
        
            DisplayAlert(withTitle: "fail", message: "", isSginup: false)
        
        
    }
    
    
    
    }

    
    
    func DisplayAlert(withTitle title: String, message: String,isSginup: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
            if isSginup {
                self.performSegue(withIdentifier: "homeScreen", sender: nil)
            } else {
                
            }

        })
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    
    
    
   
        
}

