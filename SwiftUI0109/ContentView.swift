//
//  ContentView.swift
//  SwiftUI0109
//
//  Created by t2023-m0072 on 1/9/25.
//

import SwiftUI

struct ContentView: View {
    var text1: [String] = ["Hello", "World"]
    var text2: [String] = ["Hello", "Hello", "Hello", "World", "World"]
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                
                VStack {
                    ForEach(text1.indices, id: \.self) { index in
                        Text(text1[index])
                            .foregroundColor(text1[index] == "Hello" ? Color.blue : Color.black)
                        if index < text1.count - 1 && text1[index] == "Hello" && text1[index + 1] == "World" { Spacer().frame(height: 10) // 간격 추가
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
            .frame(maxWidth: 300)
            .background(Color.yellow.edgesIgnoringSafeArea(.all))
            
            Spacer().frame(height:20)
            
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                
                VStack {
                    ForEach(text2.indices, id: \.self) { index in
                        Text(text2[index])
                            .foregroundColor(text2[index] == "Hello" ? Color.blue : Color.black)
                        if index < text2.count - 1 && text2[index] == "Hello" && text2[index + 1] == "World" { Spacer().frame(height: 10) // 간격 추가
                        }
                    }
                    
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .frame(maxWidth: 300)
            .background(Color.yellow.edgesIgnoringSafeArea(.all))
        }
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 6))
    }
}

#Preview {
    ContentView()
}



