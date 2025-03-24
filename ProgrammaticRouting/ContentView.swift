//
//  ContentView.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(Router.self) private var router
    
    var body: some View {
        @Bindable var router = router
        
        TabView {
            NavigationStack(path: $router.patientRoutes) {
                PatientHomeScreen()
                    .navigationDestination(for: PatientRoutes.self) {
                        $0.destination
                    }
            }.tabItem {
                Label("Patients", systemImage: "heart.fill")
            }
            
            NavigationStack(path: $router.doctorRoutes) {
                Text("Doctor's Home")
                    .navigationDestination(for: DoctorRoutes.self) {
                        $0.destination
                    }
            }.tabItem {
                Label("Doctors", systemImage: "plus")
            }
        }
    }
}

#Preview {
    ContentView()
}
