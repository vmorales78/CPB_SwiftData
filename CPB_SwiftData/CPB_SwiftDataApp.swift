//
//  CPB_SwiftDataApp.swift
//  CPB_SwiftData
//
//  Created by Valerie Morales on 10/2/23.
//

import SwiftUI
import SwiftData

@main
struct CPB_SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: CollegeInformation.self)
    }
}
