//
//  Person.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumbers: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shared
        
        let numbers = min(
            dataManager.names.count,
            dataManager.surnames.count,
            dataManager.phoneNumbers.count,
            dataManager.emails.count
        )
        
        for number in 0..<numbers {
            let person = Person(
                name: dataManager.names[number],
                surname: dataManager.surnames[number],
                phoneNumbers: dataManager.phoneNumbers[number],
                email: dataManager.emails[number]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
