//
//  RootView.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import SwiftUI

struct RootView: View {
    private let persons = Person.getPersons()
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2")
                    
                    Text("Contacts")
                }
            
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
