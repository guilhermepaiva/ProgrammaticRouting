//
//  PatientListView.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import SwiftUI

struct PatientListView: View {
    @Environment(Router.self) private var router
    
    // Sample data - in a real app, this would come from a database or API
    let patients = [
        Patient(id: UUID(), name: "John Doe", age: 45, condition: "Hypertension"),
        Patient(id: UUID(), name: "Jane Smith", age: 32, condition: "Diabetes"),
        Patient(id: UUID(), name: "Bob Johnson", age: 58, condition: "Arthritis")
    ]
    
    var body: some View {
        List(patients) { patient in
            PatientRow(patient: patient)
                .onTapGesture {
                    router.patientRoutes.append(.detail(patient))
                }
        }
        .navigationTitle("Patients")
    }
}

struct PatientRow: View {
    let patient: Patient
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(patient.name)
                .font(.headline)
            Text("Age: \(patient.age)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 4)
    }
}
