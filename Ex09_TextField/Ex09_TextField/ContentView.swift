//
//  ContentView.swift
//  Ex09_TextField
//
//  Created by 임채성 on 2023/05/07.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            VStack{
                TextField("이메일", text: self.$email)
                SecureField("비밀번호", text: self.$password)
            }
            
            Text("입력된 이메일:\(self.email)")
            Text("입력된 비밀번호:\(self.password)")
            
            Form{
                VStack{
                    TextField("이메일", text: self.$email)
                        .keyboardType(.emailAddress)
                    Divider()
                    SecureField("비밀번호", text: self.$password)
                }
                
                Text("입력된 이메일:\(self.email)")
                Text("입력된 비밀번호:\(self.password)")
                
                HStack{
                    Button {
                        self.hideKeyboard()
                    } label: {
                        Text("입력 완료")
                    }

                }
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

#if canImport(UIKit)
extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
