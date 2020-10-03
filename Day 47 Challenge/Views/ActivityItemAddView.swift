//
//  AddActivityItem.swift
//  Day 47 Challenge
//
//  Created by Shane on 03/10/2020.
//

import SwiftUI

struct ActivityItemAddView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var activityDescription = ""
    @ObservedObject var activities: Activities
    
    var body: some View {
        NavigationView() {
            Form {
                TextField("Description", text: $activityDescription)
            }
            .navigationBarTitle("Add Activity")
            .navigationBarItems(
                leading:
                    Button("Cancel") {
                        self.presentationMode.wrappedValue.dismiss()
                    },
                trailing:
                    Button("Save") {
                        let activity = ActivityItem(description: self.activityDescription)
                        activities.items.append(activity)
                        self.presentationMode.wrappedValue.dismiss()
                    }
            )
        }
    }
}

struct AddActivityItem_Previews: PreviewProvider {
    static var previews: some View {
        ActivityItemAddView(activities: Activities())
    }
}
