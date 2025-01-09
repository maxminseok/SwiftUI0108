//
//  ContentView.swift
//  SwiftUI0109
//
//  Created by t2023-m0072 on 1/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 첫 번째 섹션
            SectionView(texts: ["Hello", "World"])
            
            Color.white
                .frame(height: 20)
            
            // 두 번째 섹션
            SectionView(texts: ["Hello", "Hello", "Hello", "World", "World"])
        }
        .background(Color.yellow)
    }
}
struct SectionView: View {
    var texts: [String]
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
            
            VStack(alignment: .leading, spacing: 5) {
                ForEach(texts.indices, id: \.self) { index in
                    Text(texts[index])
                        .foregroundColor(texts[index] == "Hello" ? Color.blue : Color.black)
                }
            }
            .padding()
            Spacer()
        }
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    ContentView()
}



