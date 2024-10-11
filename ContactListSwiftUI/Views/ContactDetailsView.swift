//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Евгений on 11.10.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
    
    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding()
                
                Label(contact.phoneNumber, systemImage: "phone")
                Label(contact.email, systemImage: "tray")
            }
            .listStyle(.grouped)
            .navigationBarTitle(contact.fullName)
        }
    }
}

#Preview {
    ContactDetailsView(contact: Person.getContactList().first!)
}
