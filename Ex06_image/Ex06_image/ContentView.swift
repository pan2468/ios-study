//
//  ContentView.swift
//  Ex06_image
//
//  Created by 임채성 on 2023/05/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("waterfall")
            .resizable()
            .aspectRatio(contentMode: .fit)
        
        Divider()
        
        Image("waterfall2")
            .resizable()
            .scaledToFit()
            .frame(width: 250.0, height: 250.0, alignment: .center)
        
        Image(systemName: "play.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.red)
            
        Text("WaterFall")
            .background(Image("waterfall")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center))
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
