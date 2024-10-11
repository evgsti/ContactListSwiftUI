//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Евгений on 11.10.2024.
//

import SwiftUI

struct TapBarView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(title: "Contacts List", contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    TapBarView()
}
