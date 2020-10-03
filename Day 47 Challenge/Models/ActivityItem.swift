//
//  Habit.swift
//  Day 47 Challenge
//
//  Created by Shane on 03/10/2020.
//

import Foundation

struct ActivityItem: Identifiable, Codable {
    let id: UUID
    let description: String
    var timesCompleted: Int
    
    init(id: UUID, description: String, timesCompleted: Int) {
        self.id = id
        self.description = description
        self.timesCompleted = timesCompleted
    }
    
    init(description: String) {
        self.id = UUID()
        self.description = description
        self.timesCompleted = 0
    }
}
