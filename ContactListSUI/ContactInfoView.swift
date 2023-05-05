//
//  ContactInfoView.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import SwiftUI

struct ContactInfoView: View {
    let person: Person

    
    var body: some View {
        CardView(person: person)
            .navigationTitle(person.fullName)
    }
}

struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.getPersons()[0])
    }
}
