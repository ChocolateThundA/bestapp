//
//  Models.swift
//  Project2
//
//  Created by student on 3/14/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation


class Schools {
    
    static var schools = Schools()
    
    private static var _shared:Schools!
    static var shared:Schools{
        if _shared == nil {
            _shared = Schools()
        }
        return _shared
    }
    private init(){ schools = []}
    
    private var schools : [School]
    func getSchools() -> [School] {
        return schools
    }
    func add(school : School) -> Void {
        schools.append(school)}
    func numSchools() -> Int{
        return schools.count
    }
    func delete(_ school: School) -> Void{
        for i in stride(from: 0, to: schools.count, by: 1) {
            if schools[i].name == school.name{
                schools.remove(at: i)
            }
        }
    }
    
    subscript(index:Int) -> School {
        return schools[index]
    }
}



class School {
    static var _shared:School!
    
    static var shared:School{
        if _shared == nil {
            _shared = School()
        }
        return _shared
    }
    
    init () {
        name = ""
        coach = ""
        teams = []
    }
    init(name:String, coach:String, teams:[Team]) {
        self.name = name
        self.coach = coach
        self.teams = teams
    }
    convenience init(_ name: String, _ coach: String){
        let selfName = name
        let selfCoach = coach
        self.init(name: selfName, coach: selfCoach, teams: [])
    }
    func addTeam(_ name: String, _ student: [String])->Void{
        self.teams.append(Team.init(name: name, students: student))
    }
    var name : String
    var coach : String
    var teams : [Team]
}

class Team {
    init(name:String, students:[String]) {
        self.name = name
        self.students = students
    }
    var name : String
    var students : [String]
}

