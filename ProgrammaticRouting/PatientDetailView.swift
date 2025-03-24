//
//  PatientDetailView.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import SwiftUI

struct PatientDetailView: View {
    @Environment(Router.self) private var router
    
    let patient: Patient
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(patient.name)
                .font(.title)
            
            DetailRow(title: "Age", value: "\(patient.age)")
            DetailRow(title: "Condition", value: patient.condition)
            
            Button("View Patient List") {
                router.patientRoutes.append(.list)
            }
            .buttonStyle(.borderedProminent)
            
            Button("Go to Patient Home") {
                router.patientRoutes = []
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Patient Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailRow: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
            Text(value)
                .font(.body)
        }
    }
}
