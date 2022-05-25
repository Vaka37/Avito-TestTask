//
//  Model.swift
//  Avito
//
//  Created by Kalandarov Vakil on 22.05.2022.
//

import Foundation

struct EmployeesModel: Codable {
    let company: Company
}

struct Company: Codable {
    var name: String
    var employees: [Employees]
}

struct Employees: Codable {
    var name: String
    var phoneNumber: String
    var skills: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber = "phone_number"
        case skills
    }
}
