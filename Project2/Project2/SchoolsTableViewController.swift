//
//  SchoolsTableViewController.swift
//  Project2
//
//  Created by student on 3/12/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit


class SchoolsTableViewController: UITableViewController {
  
    
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTeams"{
        let teamsTVC:TeamsTableViewController = segue.destination as! TeamsTableViewController
        teamsTVC.chosenSchool = Schools.shared[tableView.indexPathForSelectedRow!.row]
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Schools.shared.getSchools().count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "schoolCell")!
        
        let schoolName = cell.viewWithTag(100) as! UILabel
        let coachName = cell.viewWithTag(200) as! UILabel
        
        schoolName.text = Schools.shared.getSchools()[indexPath.row].name
        coachName.text = Schools.shared.getSchools()[indexPath.row].coach
        
//        cell.textLabel?.text = Schools.shared.getSchools()[indexPath.row].name
//        cell.detailTextLabel?.text = Schools.shared.getSchools()[indexPath.row].coach
    
        return cell
    
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
        
}
