//
//  DoctorRoutes.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import Foundation
import SwiftUI

enum DoctorRoutes: Hashable {
    case list
    case create
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .list:
            Text("List of doctors")
        case .create:
            Text("Create a new doctor")
        }
    }
}
