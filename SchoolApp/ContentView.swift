import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    @State private var personName: String = "Aida"
    @State private var personCity: String = "Almaty"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 28) {
                    
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Image(systemName: "vcard")
                                .foregroundColor(.blue)
                                .font(.title2)
                            Text("Name card")
                                .font(.title3)
                                .bold()
                        }
                        
                        HStack {
                            Image(systemName: "pencil")
                                .foregroundColor(.gray)
                            TextField("Edit your name", text: $personName)
                                .autocorrectionDisabled()
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
                        
                        VStack(alignment: .leading, spacing: 6) {
                            Text(personName)
                                .font(.system(size: 22, weight: .bold))
                                .foregroundColor(.primary)
                            
                            HStack(spacing: 4) {
                                Image(systemName: "mappin.and.ellipse")
                                Text(personCity)
                            }
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(.secondary)
                        }
                        .padding(.top, 4)
                    }
                    .padding(20)
                    .background(Color.blue.opacity(0.08))
                    .cornerRadius(16)
                    
                    NavigationLink(destination: StudentsView()) {
                        HStack {
                            Image(systemName: "person.3.fill")
                            Text("Open students list")
                                .fontWeight(.bold)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .shadow(color: Color.blue.opacity(0.3), radius: 5, x: 0, y: 3)
                    }
                    
                    VStack(spacing: 12) {
                        HStack {
                            Image(systemName: "number.circle.fill")
                                .foregroundColor(.gray)
                            Text("Счетчик: \(count)")
                                .font(.headline)
                        }
                        
                        Button(action: { count += 1 }) {
                            Text("Нажми меня")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.primary)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 10)
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(8)
                        }
                    }
                    .padding(.top, 10)
                }
                .padding(20)
            }
            .navigationTitle("SchoolApp")
            .background(Color.gray.opacity(0.05).edgesIgnoringSafeArea(.all))
        }
    }
}
