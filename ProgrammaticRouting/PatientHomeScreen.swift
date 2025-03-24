//
//  PatientHomeScreen.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import SwiftUI

struct PatientHomeScreen: View {
    @Environment(Router.self) private var router
    
    var body: some View {
        VStack {
            Button("View Patient List") {
                router.patientRoutes.append(.list)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Patient Home")
        
    }
}

#Preview {
    PatientHomeScreen()
}
