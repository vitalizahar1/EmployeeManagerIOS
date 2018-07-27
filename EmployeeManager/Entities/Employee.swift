//
//  Employee.swift
//  EmployeeManager
//
//  Created by vitali on 7/26/18.
//  Copyright © 2018 vitcopr. All rights reserved.
//

import Foundation


class Employee {
    
    var id: String
    var firstName: String
    var lastName: String
    var patronymicName: String?
    var birth: Date
    var dateOfEmployment: Date
    
    init(id: String, firstName: String, lastName: String, patronymicName: String?, birth: Date, dateOfEmployment: Date) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.patronymicName = patronymicName
        self.birth = birth
        self.dateOfEmployment = dateOfEmployment
    }
    
}
