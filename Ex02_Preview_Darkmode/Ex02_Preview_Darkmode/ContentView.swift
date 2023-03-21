//
//  ContentView.swift
//  Ex02_Preview_Darkmode
//
//  Created by 임채성 on 2023/03/21.
//

import SwiftUI

struct ContentView: View {

    // @Environment 속성래퍼: 환경설정을 읽어오는 어노테이션
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        Text("Hello, swiftUI!")
            .padding(.all)
            // 배경 색상
            .background(colorScheme == .light ? Color.white : Color.black)
            // 콘텐츠 색상
            .foregroundColor(colorScheme == .light ? Color.black : Color.white)
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            // 기본 모드 뷰
            ContentView()
                .environment(\.colorScheme, .light)
            
            // 다크 모드 뷰
            ContentView()
                .environment(\.colorScheme, .dark)
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .previewDisplayName("iPhone 12")
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")
        }
    }
}
