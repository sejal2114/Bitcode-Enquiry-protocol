//
//  FormViewController.swift
//  BitcodeEnquiry
//
//  Created by Sejal on 01/02/23.
//

import UIKit

class FormViewController: UIViewController {

    
    var studentInfo :StudentProtocol?
  
    var firstname = ""
    var lastname = ""
    var phoneNumber = ""


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!


    @IBAction func SaveButton(_ sender: Any) {
        
        firstname = nameTextField.text!   //extract value from txtfld
        lastname = LastNameTextField.text!
        phoneNumber = phoneNumberTextField.text!
        let studentObject = Student.init(firstName: firstname,lastName: lastname, phoneNumber: Int(phoneNumber)!)  //studentobject
        studentInfo?.passStudentData(student: studentObject)
        
        navigationController?.popViewController(animated: true)

    }
}
