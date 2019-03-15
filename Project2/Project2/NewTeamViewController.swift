//
//  NewTeamViewController.swift
//  Project2
//
//  Created by student on 3/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    var chosenSchool : School!
    
    @IBAction func cancelBTN(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)    }
    
    @IBAction func doneBTN(_ sender: Any) {
        let newTeamName = teamNameTXT.text!
        let newStudZero = studZeroTXT.text!
        let newStudOne = studOneTXT.text!
        let newStudTwo = studTwoTXT.text!
        let studArray = [newStudZero, newStudOne, newStudTwo]
        chosenSchool.addTeam(newTeamName, studArray)
    self.dismiss(animated: true, completion: nil)}
    @IBOutlet weak var teamNameTXT: UITextField!
    @IBOutlet weak var studZeroTXT: UITextField!
    @IBOutlet weak var studOneTXT: UITextField!
    @IBOutlet weak var studTwoTXT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
