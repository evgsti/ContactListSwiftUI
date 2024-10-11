//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Евгений on 11.10.2024.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullName).textCase(nil)) {
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    NumbersView(contacts: Person.getContactList())
}
