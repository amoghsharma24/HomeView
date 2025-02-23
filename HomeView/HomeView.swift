import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            Text("Fruitful")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Well done, your week has been fruitful!")
                .font(.subheadline)
                .foregroundColor(.gray)
            ScrollView{
                Image(.image) // Placeholder for image
                    .frame(width: 500)
                    .cornerRadius(10)
                    .padding()
                
                Spacer()
                StatsView()
            }
            
        }
        .padding()
    }
}

struct StatsView: View {
    let categories = [
        ("Sleep", "leaf.fill", Color.green, 4),
        ("Movement", "drop.fill", Color.blue, 3),
        ("Social", "drop.fill", Color.yellow, 3),
        ("Personal", "drop.fill", Color.red, 3),
        ("Downtime", "drop.fill", Color.pink, 3),
        ("Study", "drop.fill", Color.purple, 3),
        ("Work", "drop.fill", Color.brown, 3)
    ]
    
    var body: some View {
        VStack {
            
            ScrollView {
                VStack {
                    ForEach(categories, id: \.0) { category in
                        HStack {
                            Text(category.0)
                                .font(.headline)
                                .frame(width: 200, alignment: .leading)
                            
                            HStack {
                                ForEach(0..<5) { index in
                                    Image(systemName: index < category.3 ? "drop.fill" : "drop")
                                        .foregroundColor(category.2)
                                }
                            }
                            
                            
                            Image(systemName: "info.circle")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                    }
                }
                .padding()
            }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile Screen")
    }
}

#Preview {
    HomeView()
}
