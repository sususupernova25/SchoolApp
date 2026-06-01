//
//  StudentDetailView.swift
//  SchoolApp
//
//  Created by Moldir on 14.05.2026.
//

import SwiftUI

struct StudentDetailView: View {
    var studentName: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .padding(.top, 40)
            
            Text(studentName)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text("Detailed information about the student will be displayed here.")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
            
            Spacer()
        }
        .navigationTitle("Student Profile")
    }
}
