//
//  NewSchoolViewController.swift
//  Project2
//
//  Created by student on 3/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
class NewSchoolViewController: UIViewController {

    

    @IBAction func cancelBTN(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var nameTXT: UITextField!
    @IBOutlet weak var coachTXT: UITextField!
    
    
    @IBAction func doneBTN(_ sender: Any) {
        let newSchoolName = String(nameTXT.text!)
        let newSchoolCoach = String(coachTXT.text!)
        let newSchool = School.init(name: newSchoolName, coach: newSchoolCoach, teams: [])
        Schools.shared.add(school: newSchool)
        
        self.dismiss(animated: true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }


}
