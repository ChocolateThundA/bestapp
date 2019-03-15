//
//  TeamsTableViewController.swift
//  Project2
//
//  Created by student on 3/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {

    var chosenSchool : School!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addTeam"{
            let newTeamVC:NewTeamViewController = segue.destination as! NewTeamViewController
            newTeamVC.chosenSchool = chosenSchool
        }else if segue.identifier == "toStudents"{
            let studentsVC:StudentViewController = segue.destination as! StudentViewController
            studentsVC.team = chosenSchool.teams[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = chosenSchool.name
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chosenSchool.teams.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell")
        cell?.textLabel?.text = chosenSchool.teams[indexPath.row].name
        return cell!
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


}
