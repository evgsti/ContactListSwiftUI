//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Евгений on 11.10.2024.
//

import SwiftUI

struct ContactsView: View {
    let title: String
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink {
                    ContactDetailsView(contact: contact)
                } label: {
                    Text(contact.fullName)
                }
            }
            .navigationTitle(title)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContactsView(
        title: "Contacts List",
        contacts: Person.getContactList()
    )
}
