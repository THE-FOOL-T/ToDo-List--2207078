//
//  ContentView.swift
//  TodoList-078
//
//  Created by Torikul Islam Saher on 16/11/2026.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var authService: AuthService

    var body: some View {
        Group {
            if authService.user == nil {
                LoginView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AuthService())
    }
}
