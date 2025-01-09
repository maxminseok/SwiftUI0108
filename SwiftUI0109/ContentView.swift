//
//  ContentView.swift
//  SwiftUI0109
//
//  Created by t2023-m0072 on 1/9/25.
//

import SwiftUI

extension VerticalAlignment {
    private struct ImageTitleAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            // Default to bottom alignment if no guides are set.
            context[VerticalAlignment.top]
        }
    }
    
    static let imageTitleAlignmentGuide = VerticalAlignment(
        ImageTitleAlignment.self
    )
}

struct ContentView: View {
    var text1: [String] = ["Hello", "World"]
    var text2: [String] = ["Hello", "Hello", "Hello", "World", "World"]
    var body: some View {
        VStack {
            // 첫 번째 HStack: 첫 번째 이미지와 텍스트 배열을 포함하는 뷰
            HStack(alignment: .imageTitleAlignmentGuide) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.top, 20)
                    .alignmentGuide(.imageTitleAlignmentGuide) { context in
                        context[.firstTextBaseline]
                    }
                
                // 첫 번째 VStack: 텍스트 배열 text1을 포함하는 뷰
                VStack {
                    ForEach(text1.indices, id: \.self) { index in
                        Text(text1[index])
                            .foregroundColor(text1[index] == "Hello" ? Color.blue : Color.black)
                            .alignmentGuide(.imageTitleAlignmentGuide) { context in
                                context[.firstTextBaseline]
                            }
                        if index < text1.count - 1 && text1[index] == "Hello" && text1[index + 1] == "World" { Spacer().frame(height: 10) // 간격 추가
                        }
                    }
                }
                Spacer()
                
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
            .frame(maxWidth: 300)
            .background(Color.yellow.edgesIgnoringSafeArea(.all))
            
            Spacer().frame(height:20)
            
            // 두 번째 HStack: 두 번째 이미지와 텍스트 배열을 포함하는 뷰
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                
                // 두 번째 VStack: 텍스트 배열 text2를 포함하는 뷰
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
            .padding(.top, 10)
            .frame(maxWidth: 300)
            .background(Color.yellow.edgesIgnoringSafeArea(.all))
        }
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 6))
    }
}

#Preview {
    ContentView()
}
