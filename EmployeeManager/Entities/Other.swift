//
//  Other.swift
//  EmployeeManager
//
//  Created by vitali on 7/26/18.
//  Copyright © 2018 vitcopr. All rights reserved.
//

import Foundation

class Other : Employee {
    
    var description: String
    
    init(id: String, firstName: String, lastName: String, patronymicName: String?, birth: Date, dateOfEmployment: Date, description: String) {
        self.description = description
        super.init(id: id, firstName: firstName, lastName: lastName, patronymicName: patronymicName, birth: birth, dateOfEmployment: dateOfEmployment)
    }
    
    convenience init(employee e: Employee, description: String) {
        self.init(id: e.id, firstName: e.firstName, lastName: e.lastName, patronymicName: e.patronymicName, birth: e.birth, dateOfEmployment: e.dateOfEmployment, description: description)
    }
    
    override convenience init(id: String, firstName: String, lastName: String, patronymicName: String?, birth: Date, dateOfEmployment: Date) {
        self.init(id: id, firstName: firstName, lastName: lastName, patronymicName: patronymicName, birth: birth, dateOfEmployment: dateOfEmployment, description: "")
    }
}
