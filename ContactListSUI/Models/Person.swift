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
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        let emails = dataManager.emails.shuffled()
        
        let numbers = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for number in 0..<numbers {
            let person = Person(
                name: names[number],
                surname: surnames[number],
                phoneNumbers: phoneNumbers[number],
                email: emails[number]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
