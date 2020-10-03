//
//  ContentView.swift
//  Day 47 Challenge
//
//  Created by Shane on 03/10/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var activities = Activities()
    @State private var isShowingAddActivity = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(activities.items) { item in
                    HStack {
                        Text("\(item.description)")
                        Spacer()
                        Text("\(item.timesCompleted)")
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("Activites")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    Button(action: {
                        self.isShowingAddActivity = true
                    }) {
                        Text("Add")
                    }
            )
            .sheet(isPresented: $isShowingAddActivity) {
                ActivityItemAddView(activities: self.activities)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        activities.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
