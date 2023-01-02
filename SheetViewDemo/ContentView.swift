//
//  ContentView.swift
//  SheetViewDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Color.yellow
            .ignoresSafeArea()
            .overlay(alignment: .topTrailing) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle")
                        .font(.largeTitle)
                }
                .padding()

            }
            .interactiveDismissDisabled()
    }
}

struct ContentView: View {
    @State private var isSheetShowing: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isSheetShowing.toggle()
            } label: {
                Text("Show sheet view")
            }
            .sheet(isPresented: $isSheetShowing) {
                SheetView()
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
