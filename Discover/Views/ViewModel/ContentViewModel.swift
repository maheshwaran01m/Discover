//
//  ContentViewModel.swift
//  Discover
//
//  Created by MAHESHWARAN on 06/01/24.
//

import SwiftUI

class ContentViewModel: ObservableObject {
  
  @Published var records: [String] = []
  @Published var showAlert = false
  @Published var showView = false
}
