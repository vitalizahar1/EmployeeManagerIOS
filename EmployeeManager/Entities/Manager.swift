//
//  Manager.swift
//  EmployeeManager
//
//  Created by vitali on 7/26/18.
//  Copyright © 2018 vitcopr. All rights reserved.
//

import Foundation

class Manager : Employee {
    
    private var supervisedIds: [String]
    
    override init(id: String, firstName: String, lastName: String, patronymicName: String?, birth: Date, dateOfEmployment: Date) {
        supervisedIds = [String]()
        super.init(id: id, firstName: firstName, lastName: lastName, patronymicName: patronymicName, birth: birth, dateOfEmployment: dateOfEmployment)
    }
    
    convenience init(employee e: Employee, supervisedIds: [String]) {
        self.init(id: e.id, firstName: e.firstName, lastName: e.lastName, patronymicName: e.patronymicName, birth: e.birth, dateOfEmployment: e.dateOfEmployment)
        for id in supervisedIds {
            self.supervisedIds.append(id)
        }
    }
    
    
    @discardableResult
    func addEmployee(employee: Employee) -> Bool{
        if self.id != employee.id && !supervisedIds.contains(employee.id) {
            supervisedIds.append(employee.id)
            return true
        }
        return false
    }
    
    @discardableResult
    func removeEmployee(employee: Employee) -> Bool {
        if supervisedIds.contains(employee.id) {
            supervisedIds.remove(at: supervisedIds.index(of: employee.id)!)
            return true
        }
        else {
            return false
        }
    }
    
    func getSupervisedIds() -> [String] {
        return supervisedIds
    }
}
