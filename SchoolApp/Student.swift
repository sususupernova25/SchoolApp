//
//  Student.swift
//  SchoolApp
//
//  Created by Moldir on 29.05.2026.
//

import Foundation

struct Student: Identifiable {
    let id = UUID()
    var name: String
    var gpa: Double
}
