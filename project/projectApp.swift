//
//  projectApp.swift
//  project
//
//  Created by Yongkang Lin on 3/4/24.
//

import SwiftUI
import Firebase

@main
struct projectApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
