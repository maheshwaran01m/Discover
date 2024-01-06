//
//  DiscoverApp.swift
//  Discover
//
//  Created by MAHESHWARAN on 06/01/24.
//

import SwiftUI

@main
struct DiscoverApp: App {
  
  var body: some Scene {
    WindowGroup {
      let _ = print("Path: \(URL.libraryDirectory.path())")
      ContentView()
    }
  }
}
