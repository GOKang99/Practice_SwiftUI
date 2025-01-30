//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Omer on 1/30/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)

        }
    }
}
