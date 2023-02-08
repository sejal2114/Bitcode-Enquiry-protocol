//
//  ViewController.swift
//  BitcodeEnquiry
//
//  Created by Sejal on 01/02/23.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func navigateToAndroid(_ sender: Any) {
        let navigate = (self.storyboard?.instantiateViewController(withIdentifier: "CourseViewController") as? CourseViewController)!
        navigate.courseName = "Android"
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func navigateToIos(_ sender: Any) {
        let courseViewController = (self.storyboard?.instantiateViewController(withIdentifier: "CourseViewController") as? CourseViewController)!
        courseViewController.courseName = "iOS"
        navigationController?.pushViewController(courseViewController, animated: true)
        
    }
}



