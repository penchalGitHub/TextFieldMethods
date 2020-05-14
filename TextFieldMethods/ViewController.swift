//
//  ViewController.swift
//  TextFieldMethods
//
//  Created by VijayNew on 14/05/20.
//  Copyright © 2020 VijayNew. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstName:UILabel!
    @IBOutlet weak var lastName:UILabel!
    @IBOutlet weak var phoneNo:UILabel!
    @IBOutlet weak var mailID:UILabel!
    @IBOutlet weak var address:UILabel!
    @IBOutlet weak var alternativeNo:UILabel!
    
    @IBOutlet weak var firstNameTF:UITextField!
    @IBOutlet weak var lastNameTF:UITextField!
    @IBOutlet weak var phoneNoTF:UITextField!
    @IBOutlet weak var mailIDTF:UITextField!
    @IBOutlet weak var addressTF:UITextField!
    @IBOutlet weak var alternateNoTF:UITextField!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Editing has started")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let enteredText = string
        print(enteredText)
        if textField == firstNameTF {
            if "1234567890".contains(enteredText){
                print("Numbers are not allowed")
                return false
            }
        }
        
        if textField == lastNameTF {
            if "1234567890".contains(enteredText){
                print("Numbers are not allowed")
                return false
            }
        }
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Completed entering text")
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//            textField.resignFirstResponder()
//            return true
//
//    }
    

    @IBAction func clear(_ sender: Any) {
        firstNameTF.text = ""
        lastNameTF.text = ""
        phoneNoTF.text = ""
        mailIDTF.text = ""
        addressTF.text = ""
        alternateNoTF.text = ""
        
    }
    
    
    @IBAction func submit(_ sender: Any) {
        let uname = firstNameTF.text ?? ""
        let password = lastNameTF.text ?? ""
        
        if uname.isEmpty || password.isEmpty {
            let alertController = UIAlertController(title: "Please Enter Text", message: "Enter valid first and last name", preferredStyle: .alert)
            let Okalert = UIAlertAction(title: "OK", style: .default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alertController.addAction(Okalert)
            alertController.addAction(cancelAction)
            self.present(alertController, animated: true, completion:nil)
        }
        
    }
    
    

}

