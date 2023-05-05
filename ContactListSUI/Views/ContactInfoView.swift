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
        List {
            HStack {
                Spacer()
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                Spacer()
            }
            
            ContactInfoRowView(personInfo: person.phoneNumbers, image: "phone")
            
            ContactInfoRowView(personInfo: person.email, image: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.getPersons()[0])
    }
}
