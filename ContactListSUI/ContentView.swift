//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
