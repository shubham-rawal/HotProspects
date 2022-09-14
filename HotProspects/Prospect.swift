//
//  Prospect.swift
//  HotProspects
//
//  Created by Shubham Rawal on 14/09/22.
//

import SwiftUI

class Prospect : Codable, Identifiable {
    var id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    var isContacted = false
}

@MainActor class Prospects : ObservableObject {
    @Published var people : [Prospect]
    
    init() {
        people = []
    }
}
