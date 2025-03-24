//
//  PatientRoutes.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import Foundation
import SwiftUI

enum PatientRoutes: Hashable {
    case list
    case create
    case detail(Patient)
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .list:
            PatientListView()
        case .create:
            Text("Create Patient")
        case .detail(let patient):
            PatientDetailView(patient: patient)
        }
    }
}
