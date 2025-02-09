import SwiftUI
import Supabase

struct MainView: View {
    @StateObject var viewModel = MainViewModel()

    // Safely unwrap Supabase URL and Key
//    let supabase_url = Bundle.main.infoDictionary?["SUPABASE_URL"] as? String
//    let supabase_key = Bundle.main.infoDictionary?["SUPABASE_KEY"] as? String
//    
    // Initialize Supabase Client
    //if let url = URL(string: supabase_url) {
    //    let supabase = SupabaseClient(supabaseURL: url, supabaseKey: supabase_key)
    //    print("Supabase client initialized successfully.")
    //} else {
    //    print("Invalid Supabase URL.")
    //}
    
    
    private var loggedIn: Bool = true
    
    var body: some View {
        if loggedIn {
            TabView {
                TodoListView(userId: viewModel.currentUserId)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
