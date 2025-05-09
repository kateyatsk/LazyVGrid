//
//  ContentView.swift
//  LazyVGrid
//
//  Created by Екатерина Яцкевич on 9.05.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let columns: [GridItem] = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        VStack {
            LazyVGrid(columns: columns) {
                ProductView(imageName: "mocka", name: "МОККА")
                ProductView(imageName: "latte", name: "ЛАТТЕ")
                ProductView(imageName: "kapuchino", name: "КАПУЧИНО")
                ProductView(imageName: "raf", name: "РАФ КЛАССИЧЕСКИЙ")
                ProductView(imageName: "mockiato", name: "ГОЛДЕН МАКИАТО")
                ProductView(imageName: "raf", name: "РАФ ВАНИЛЛА")
            }
        }
        .padding()
        .background(Color(.systemGray6))
    }
}

#Preview {
    ContentView()
}


