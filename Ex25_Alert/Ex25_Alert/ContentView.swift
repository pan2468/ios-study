//
//  ContentView.swift
//  Ex25_Alert
//
//  Created by 임채성 on 2023/05/07.
//

import SwiftUI

struct ContentView: View {
 @State private var showingAlert1 = false
 @State private var showingAlert2 = false
    
    var body: some View {
        VStack {
            Button{
                self.showingAlert1 = true
            } label: {
                Text("Show Alert")
            }
            .alert(isPresented: $showingAlert1){
                Alert(title: Text("title"),
                      message: Text("알럿입니다."),
                      dismissButton: .default(Text("확인")))
            }
        }
        
        VStack {
            Button{
                self.showingAlert2 = true
            } label: {
                Text("Show Alert2")
            }
            .alert(isPresented: $showingAlert2){
                Alert(title: Text("title"),
                      message: Text("알럿입니다."),
                      primaryButton: .destructive(Text("확인"), action:{
                     print("OK ios")
                }),
                 secondaryButton: .cancel())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
