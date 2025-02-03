//
//  supabase.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import Foundation
import Supabase

// Safely unwrap Supabase URL and Key
guard let supabase_url = Bundle.main.infoDictionary?["SUPABASE_URL"] as? String,
      let supabase_key = Bundle.main.infoDictionary?["SUPABASE_KEY"] as? String else {
    fatalError("Missing Supabase credentials in Info.plist")
}

func hi() {
    print("Supabase URL: \(supabase_url)")
    print("Supabase KEY: \(supabase_key)")
}

hi()

// Initialize Supabase Client
if let url = URL(string: supabase_url) {
    let supabase = SupabaseClient(supabaseURL: url, supabaseKey: supabase_key)
    print("Supabase client initialized successfully.")
} else {
    print("Invalid Supabase URL.")
}
