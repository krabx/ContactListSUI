//
//  ContactInfoRowView.swift
//  ContactListSUI
//
//  Created by Богдан Радченко on 05.05.2023.
//

import SwiftUI

struct ContactInfoRowView: View {
    let personInfo: String
    let image: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: image)
                .foregroundColor(.blue)
            
            Text(personInfo)
            
            Spacer()
        }
        .padding(.leading, 20)
    }
}

struct ContactInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoRowView(personInfo: "email", image: "phone")
    }
}
