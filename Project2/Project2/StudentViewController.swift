//
//  StudentViewController.swift
//  Project2
//
//  Created by student on 3/12/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
class StudentViewController: UIViewController {

    var team : Team!

    
    
    @IBOutlet weak var studZeroLBL: UILabel!
    
    @IBOutlet weak var studOneLBL: UILabel!
    
    @IBOutlet weak var studTwoLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = team.name

    studZeroLBL.text = team.students[0]
    studOneLBL.text = team.students[1]
    studTwoLBL.text = team.students[2]
    }
}

