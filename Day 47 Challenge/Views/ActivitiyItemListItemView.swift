//
//  ActivitiyItemListItemView.swift
//  Day 47 Challenge
//
//  Created by Shane on 03/10/2020.
//

import SwiftUI

struct ActivitiyItemListItemView: View {
    @State var item: ActivityItem
    
    var body: some View {
        HStack {
            Text("\(item.description)")
            Spacer()
            Button(action: {
                if item.timesCompleted > 0 {
                    print("Decrement")
                    item.timesCompleted -= 1
                } else {
                    print("Not > 0, so doing nothing")
                }
            }) {
                Image(systemName: "minus")
            }
            .padding()
            Text("\(item.timesCompleted)")
            Button(action: {
                print("Increment")
                item.timesCompleted += 1
            }) {
                Image(systemName: "plus")
            }
            .padding()
        }
    }
}

struct ActivitiyItemListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiyItemListItemView(item: ActivityItem(description: "Thingy"))
    }
}
