//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import SwiftUI

struct ContactListView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
        NavigationStack {
            List(persons, id: \.self) { person in
                NavigationLink(destination: PersonalInfoView()) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
