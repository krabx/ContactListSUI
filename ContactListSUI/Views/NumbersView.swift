//
//  NumbersView.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons, id: \.self) { person in
                Section(person.fullName) {
                    ContactInfoRowView(
                        personInfo: person.phoneNumbers,
                        image: "phone"
                    )
                    
                    ContactInfoRowView(
                        personInfo: person.email,
                        image: "tray"
                    )
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersons())
    }
}
