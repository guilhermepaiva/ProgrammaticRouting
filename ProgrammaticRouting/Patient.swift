//
//  Patient.swift
//  ProgrammaticRouting
//
//  Created by Guilherme Paiva on 24/03/2025.
//

import Foundation

struct Patient: Identifiable, Hashable {
    let id: UUID
    let name: String
    let age: Int
    let condition: String
    
    static func == (lhs: Patient, rhs: Patient) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
