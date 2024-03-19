//
//  ContentView.swift
//  SwiftUIKeyboardBarIssueDemo
//
//  Created by Kjuly on 19/3/2024.
//  Copyright © 2024 Kaijie Yu. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  @State private var text: String = ""
  @FocusState private var isTextFieldFocused: Bool

  var body: some View {
    VStack {
      Text("A Text Field Below.")
      TextField("Enter text here.", text: $text)
        .frame(height: 44)
        .textFieldStyle(.roundedBorder)
        .focused($isTextFieldFocused)
    }
    .toolbar {
      ToolbarItem(placement: .keyboard) {
        Button {
          self.isTextFieldFocused = false
        } label: {
          Image(systemName: "keyboard.chevron.compact.down")
            .foregroundColor(.secondary)
            .frame(height: 44)
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
      }
    }
  }
}
