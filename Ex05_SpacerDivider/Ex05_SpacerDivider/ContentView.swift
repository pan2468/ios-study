//
//  ContentView.swift
//  Ex05_SpacerDivider
//
//  Created by 임채성 on 2023/05/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
                Spacer()
                Color.yellow
                    .frame(height: 100)
                Spacer()
                Color.red
                    .frame(height: 100)
                Spacer()
            }
            HStack{
                Spacer()
                Color.yellow
                    .frame(width: 100)
                Color.red
                    .frame(width: 100)
                Spacer()
            }
            VStack{
                Divider()
                Color.yellow
                    .frame(height: 100)
                Divider()
                Color.red
                    .frame(height: 100)
                Divider()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
