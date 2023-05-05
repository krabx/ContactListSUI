//
//  CardView.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import SwiftUI

struct CardView: View {
    let person: Person
    let color0 = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(color0)
                .ignoresSafeArea()
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.white)
                        .frame(height: 400)
                    
                    VStack(spacing: 20) {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 200, height: 200)
                        
                        Divider()
                        
                        HStack(spacing: 20) {
                            Image(systemName: "phone")
                            
                            Text(person.phoneNumbers)
                            
                            Spacer()
                        }
                        
                        Divider()
                        
                        HStack(spacing: 20) {
                            Image(systemName: "tray")
                            
                            Text(person.email)
                            
                            Spacer()
                        }
                    }
                    .padding()
                }
                Spacer()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: Person.getPersons()[0])
    }
}
