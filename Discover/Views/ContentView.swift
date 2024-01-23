//
//  ContentView.swift
//  Discover
//
//  Created by MAHESHWARAN on 06/01/24.
//

import SwiftUI

struct ContentView: View {
  
  @StateObject private var viewModel = ContentViewModel()
  
  var body: some View {
    NavigationStack {
      List(0..<10) { item in
        mainView
      }
      .listStyle(.plain)
      .toolbar(content: addButton)
      .alert("Warning", isPresented: $viewModel.showAlert) {
        Button("Ok") {}
      }
      .navigationTitle("Discover")
      .sheet(isPresented: $viewModel.showAlert) {
        Rectangle()
          .frame(width: 100, height: 100)
          .onTapGesture {
            viewModel.showAlert.toggle()
          }
      }
    }
  }
  
  private var mainView: some View {
    VStack(alignment: .leading) {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
    }
    .padding()
    .frame(maxWidth: .infinity, alignment: .leading)
    .background(Color.pink.opacity(0.2), in: Capsule())
    .listRowSeparator(.hidden)
  }
  
  private func addButton() -> some ToolbarContent {
    ToolbarItem(placement: .automatic) {
      Button(action: {
        viewModel.showAlert.toggle()
      }, label: {
        Image(systemName: "plus")
          .padding(10)
          .background(Color.pink.opacity(0.2),
                      in: Circle())
          .foregroundStyle(.blue)
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      ContentView()
    }
  }
}
