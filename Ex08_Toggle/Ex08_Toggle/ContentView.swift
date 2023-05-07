//
//  ContentView.swift
//  Ex08_Toggle
//
//  Created by 임채성 on 2023/05/07.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isToggle = false
    
    var body: some View {
        Toggle(isOn: self.$isToggle){
            Text("Toggle")
        }
        .frame(width: 110)
        
        Divider()
        
        if self.isToggle == true{
            Text("Toggle On")
        }else{
            Text("Toggle Off")
        }
        
        Divider()
        
        Toggle(isOn: self.$isToggle){
            Text("Toggle")
        }
        .frame(width: 110)
        .padding()
        .toggleStyle(SwitchToggleStyle(tint: Color(.orange)))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
