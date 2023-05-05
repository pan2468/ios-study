//
//  ContentView.swift
//  Ex03_Test
//
//  Created by 임채성 on 2023/05/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Swift UI 입니다.\nSwift UI 입니다.\nSwift UI 입니다.")
            .fontWeight(.thin)
            .foregroundColor(Color.orange)
            .multilineTextAlignment(.center)
            .padding(.all, 2.0)
            .font(.system(size: 30))
            .frame(width: 300, height: 300)
            .lineLimit(3)
            .border(Color.purple, width: 5)
            .background(Color.gray)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
