//
//  MyApp.swift
//  TodoList-078
//
//  Created by Torikul Islam Saher on 16/11/2026.
//

import SwiftUI
import FirebaseCore

@main
struct MyApp: App {

    @StateObject private var authService: AuthService

    init() {
        FirebaseApp.configure()

        _authService = StateObject(
            wrappedValue: AuthService()
        )
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authService)
        }
    }
}
