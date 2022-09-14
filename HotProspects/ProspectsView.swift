//
//  ProspectsView.swift
//  HotProspects
//
//  Created by Shubham Rawal on 14/09/22.
//

import SwiftUI

struct ProspectsView: View {
    enum FilterType {
        case none, contacted, uncontacted
    }
    
    
    //this will find the Prospects class in the environment, attach it to the local prospects property, watch it for changes and re-invoke the body property when there is a change.
    @EnvironmentObject var prospects : Prospects
    var filter: FilterType
    
    var title : String {
        switch filter {
        case .none:
            return "Everyone"
        case .contacted:
            return "Contacted"
        case .uncontacted:
            return "Uncontacted"
        }
    }
    var body: some View {
        NavigationView {
            Text("Hello World")
                .navigationTitle(title)
        }
    }
}

struct ProspectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectsView(filter: .none)
            .environmentObject(Prospects())
    }
}
