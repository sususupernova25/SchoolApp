import SwiftUI

struct StudentsView: View {
    @State private var students: [Student] = [
        Student(name: "Aida Tulegenova", gpa: 3.85),
        Student(name: "Bekzat Sarsenov", gpa: 3.20),
        Student(name: "Dana Iskakova", gpa: 3.95),
        Student(name: "Erlan Nurpeisov", gpa: 2.75),
        Student(name: "Madina Akhmetova", gpa: 3.60)
    ]
    
    @State private var newStudentName: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Add New Student")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                
                HStack(spacing: 12) {
                    TextField("New student name", text: $newStudentName)
                        .textFieldStyle(.roundedBorder)
                        .autocorrectionDisabled()
                    
                    Button(action: {
                        addNewStudent()
                    }) {
                        Text("Add")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                            .background(newStudentName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(newStudentName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
            }
            .padding()
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.03), radius: 3, x: 0, y: 2)
            
            List(students) { student in
                NavigationLink(destination: StudentDetailView(studentName: student.name)) {
                    HStack {
                        Text(student.name)
                            .font(.system(size: 16, weight: .medium))
                        Spacer()
                        Text(String(format: "GPA: %.2f", student.gpa))
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, 4)
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Students")
    }
    
    private func addNewStudent() {
        let trimmedName = newStudentName.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedName.isEmpty else { return }
        
        let newStudent = Student(name: trimmedName, gpa: 3.0)
        students.append(newStudent)
        
        newStudentName = ""
    }
}
