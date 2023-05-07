//
//  ContentView.swift
//  Ex07_Button
//
//  Created by 임채성 on 2023/05/07.
//

import SwiftUI

struct ContentView: View {
    
    func play(){
        print("play func")
    }
    
    var body: some View {
        VStack{
            Button {
               print("Clicked")
            } label: {
                Text("Button")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .font(.title)
            }
            
            Divider()
            
            Button {
                print("Clicked")
            } label: {
                Text("Button")
                    .foregroundColor(.purple)
                    .font(.title)
                    .padding()
                    .border(Color.purple, width: 5)
            }

            Divider()
            
            Button {
                print("Play Clicked")
                self.play()
            } label: {
                Image(systemName: "play.circle")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }

            Divider()
            
            Button {
                print("Play Clicked")
            } label: {
                HStack{
                    Image(systemName: "play.circle")
                        .font(.title)
                    Text("Play")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(.red)
                .ignoresSafeArea()
                .cornerRadius(40)
            }

            Divider()
            
            Button {
                print("Play Clicked")
            } label: {
                HStack{
                    Image(systemName: "play.circle")
                        .font(.title)
                    Text("Play")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red,Color.yellow]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
