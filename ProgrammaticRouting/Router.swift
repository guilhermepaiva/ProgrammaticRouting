//
//  Router.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import Foundation
import Observation
import SwiftUI

@Observable
class Router {
    var patientRoutes: [PatientRoutes] = []
    var doctorRoutes: [DoctorRoutes] = []
}
