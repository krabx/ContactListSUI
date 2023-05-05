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
                    HStack(spacing: 20) {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(person.phoneNumbers)
                    }
                    HStack(spacing: 20) {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text(person.email)
                    }
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
