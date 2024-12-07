//
//  HomeView.swift
//  travelbuddy
//
//  Created by 임석현 on R 6/10/25.
//

import SwiftUI

struct HomeView: View {
    @State private var isLoggedIn : Bool = false
    @Environment(\.managedObjectContext) var coreDB
    @FetchRequest(
        entity: UserMember.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \UserMember.id, ascending: true)]
    ) private var members : FetchedResults<UserMember>
    @State private var searchText : String = ""
    @State private var searchIsActive : Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("予約タイトル")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30))
                    NavigationLink(destination: Text("Account")) {
                        Label("", systemImage: "person.crop.circle")
                            .font(.largeTitle)
                    }
                    .padding(EdgeInsets(top: 0,leading: 150,bottom: 0,trailing: 0))
                    
                }
                Divider()
                    .padding(20)
                Spacer()
            }
        }
        .navigationTitle("予約タイトル")
        .navigationBarTitleDisplayMode(.inline)
    }
    var searchResults : [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter {
                $0.contains(searchText)
            }
        }
    }
}
#Preview {
    HomeView()
}
