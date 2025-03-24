//
//  ProgrammaticRoutingApp.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import SwiftUI

@main
struct ProgrammaticRoutingApp: App {
    @State private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(router)
        }
    }
}
