//
//  ContentView.swift
//  Ex04_Stack
//
//  Created by 임채성 on 2023/05/05.
//

import SwiftUI

struct MyText: View{
    var body: some View{
        Text("Hello, SwiftUI")
            .padding()
            .border(Color.blue, width: 3)
            .background(Color.green)
    }
}

struct ContentView: View {
    var body: some View {
        VStack{ //수평방향 정렬
            HStack{
                MyText()
                MyText()
                MyText()
            }
            Divider()
            HStack(alignment: .center, spacing: 10){
                MyText()
                MyText()
                MyText()
            }
            Divider()
            VStack{ //수직방향 정렬
                MyText()
                MyText()
                MyText()
            }
            ZStack{ //상하방향 정렬
                Color.yellow.edgesIgnoringSafeArea(.all)
                Color.red.frame(width: 200, height: 200)
                Color.blue.frame(width: 100, height: 100)
            }
            .padding()
            .border(Color.red, width: 3)
            Divider()
            HStack(alignment: .top, spacing: 10){
                Text("Hello").font(.caption)
                Text("Hello")
                Text("Hello").font(.title)
                Text("Hello").font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
