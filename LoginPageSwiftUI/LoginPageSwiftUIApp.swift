//
//  LoginPageSwiftUIApp.swift
//  LoginPageSwiftUI
//
//  Created by Michaela Beyer on 2022-10-13.
//

import SwiftUI
import Firebase

@main
struct LoginPageSwiftUIApp: App {
    
    //Detta är det enda som behövs för att sätta up Firebase i appen
    init() {
        FirebaseApp.configure()
    }
    //--------
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
