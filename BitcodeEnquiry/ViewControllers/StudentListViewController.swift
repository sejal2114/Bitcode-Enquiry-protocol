//
//  StudentListViewController.swift
//  BitcodeEnquiry
//
//  Created by Sejal on 01/02/23.
//

import UIKit

class StudentListViewController: UIViewController ,StudentProtocol {
    func passStudentData(student: Student) {
        studentsArray.append(student)
        studentTableView.reloadData()
    }
    


    @IBOutlet weak var studentTableView: UITableView!
     
    var studentsArray : [Student] = []   //array of stuct
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //register xib
        let nib = UINib(nibName: "StudentTableViewCell", bundle: nil)
    studentTableView.register(nib, forCellReuseIdentifier: "StudentTableViewCell")
        
        studentTableView.delegate = self
        studentTableView.dataSource = self
        
    }
    
    @IBAction func addButton(_ sender: Any) {
        let formViewController = (self.storyboard?.instantiateViewController(withIdentifier: "FormViewController") as? FormViewController)!
        
        formViewController.studentInfo = self    //assign  reference of protocol to self
        
            
        navigationController?.pushViewController(formViewController, animated: true)
    }
    
    
}

extension StudentListViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return studentsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell? else { return UITableViewCell () }
        
        let student = studentsArray[indexPath.row]   // get student from array using index
        cell.firstNameLable.text = student.firstName
        cell.lastNameLable.text = student.lastName
        cell.phoneNumberLable.text = "\(student.phoneNumber)"
        return cell
    }
}

