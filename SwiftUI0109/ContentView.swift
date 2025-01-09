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
                            
                    }
                    
                }
            }
            .padding()
            .background(Color.yellow)
            Spacer().frame(height:20)
            
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                
                VStack {
                    ForEach(text2.indices, id: \.self) { index in
                        Text(text2[index])
                            .foregroundColor(text2[index] == "Hello" ? Color.blue : Color.black)
                            
                    }
                    
                }
            }
            .padding()
            .background(Color.yellow)
        }
    }
    
}

#Preview {
    ContentView()
}



