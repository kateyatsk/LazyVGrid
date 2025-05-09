//
//  ProductView.swift
//  LazyVGrid
//
//  Created by Екатерина Яцкевич on 9.05.25.
//


import SwiftUI

struct ProductView: View {
    var imageName: String
    var name: String
    
    var body: some View {
        VStack {
            Image(imageName)
            HStack {
                Text(name)
                    .font(.system(size: 14, weight: .bold))
                Spacer()
                Image("star")
            }
            .padding(.horizontal)
            Divider()
            HStack {
                Text("от 300₽")
                    .modifier(PriceModifier())
                Spacer()
                Text("350 мл")
                    .font(.system(size: 10))
            }
            .padding()
            Spacer()
        }
        .background(.white)
        .frame(width: 180, height: 259)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct PriceModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding(.horizontal)
            .padding(.vertical, 5)
            .foregroundColor(.white)
            .font(.system(size: 10))
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 100))
    }
}
