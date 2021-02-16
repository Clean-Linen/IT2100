//
//  ContentView.swift
//  Shared
//
//  Created by William Wilson on 2/15/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .darkGray
    }
    
    @State var selectedIndex = 0
    
    let tabBarImageName = ["person", "book", "info"]
    
    var body: some View {
        VStack {
        
        ZStack {
            
            switch selectedIndex {
            case 0:
                ScrollView{
                    Text("User")
                        .navigationTitle("User")
                    Spacer()
                    Text("William Wilson Pursuing Associates in Business with a major in Programming")
                }
                
                
            case 1:
                ScrollView {
                    Text("Books")
                        .navigationTitle("Books")
                    Spacer()
                    Text("Monty Don - The Complete Gardener")
                    Spacer()
                    Text("Christian Keur and Aaron Hillegass - iOS Programming")
                    Spacer()
                    Text("William McAllister - Data Structures and Algrorithms Using Java")
                }
                
            default:
                ScrollView {
                Text("Book Club Info")
                    .navigationTitle("Book Club Info")
                Spacer()
                Spacer()
                Spacer()
                Text("This is the IT 2100 reading club. Founded in Spring 2021 with the purpose of furthering our knowledge of Controller Views and Tab Bar Views. We hope you enjoy our selection of current and favorite books.")
            }
        }
            
            Spacer()
            
            HStack{
                ForEach(0..<3) { num in
                    Button(action: {
                    selectedIndex = num
                }, label: {
                    Spacer()
                    Image(systemName: tabBarImageName[num])
                        .foregroundColor(Color.black)
                    Spacer()
                })
            }
        }
        }
    }
}
        
//        TabView {
//            Text("User")
//                .tabItem {
//                    Image(systemName: "person")
//                    Text("User")
//                }
        //            Text("Books")
        //                .tabItem {
        //                    Image(systemName: "book")
        //                    Text("Books")
        //                }
        //            Text("Book Club Info")
        //                .tabItem {
        //            Image(systemName: "info")//
        //                 Text("Book Club Info")
        //              }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
