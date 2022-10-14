//
//  ContentView.swift
//  LoginPageSwiftUI
//
//  Created by Michaela Beyer on 2022-10-13.
//

import SwiftUI
import Firebase

//TODO - create functions to sign up and register, write and read from firebase

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        
        ZStack {
            
            //-----------BACKGROUND----------
            
            LinearGradient(colors: [.white, Color.indigo.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{

            Circle()
                    .frame(width: 100)
                    .foregroundColor(.white)
                    .blur(radius: 4)
                    .offset(x: -80, y: 30)
                
                Spacer()

                Circle()
                        .frame(width: 200)
                        .foregroundColor(.indigo)
                        .blur(radius: 4)
                        .offset(x: 80, y: -30)
                
                Spacer()
                
                Circle()
                        .frame(width: 250)
                        .foregroundColor(.white)
                        .blur(radius: 4)
                        .offset(x:-50, y: -30)


//            Star(points: 5, innerRatio: 0.6)
//                .fill(Color.indigo)
//                .frame(width:300)
//                .blur(radius: 5)
        }
            //--------------HEADER----------------
            
            VStack(spacing: 20){
                
                VStack{
                    Text("HalliHallå")
                    .font(.system(size: 60, weight: .black, design: .rounded))
                    .padding(.top, 20)
                    
                }
                .padding()
                .frame(width: 350)
                .foregroundStyle(LinearGradient(colors: [.indigo, .blue], startPoint: .top, endPoint: .bottom))
                
                Spacer()
                
                //---------INPUT FIELDS & BTNS--------
                
                VStack{
                    TextField("Email", text: $email)
                        .foregroundColor(.black)
                        .textFieldStyle(.plain)
                        
                    
                        .placeholder(when: email.isEmpty) {
                            Text("Email")
                                .foregroundColor(.black)
                                
                        }
                    
                    Rectangle()
                        .frame(width: 240, height: 1)
                        .foregroundColor(.black)
                        .padding(.bottom, 25)
                        
                    
                    
                    
                    SecureField("Password", text: $password)
                        .foregroundColor(.black)
                        .textFieldStyle(.plain)
                        
                    
                        .placeholder(when: password.isEmpty) {
                            Text("Password")
                                .foregroundColor(.black)
                                
                        }
                    Rectangle()
                        .frame(width: 240, height: 1)
                        .foregroundColor(.black)
                        .padding(.bottom, 25)
                    
                    Button("Log In", action: {})
                        .fontWeight(.bold)
                        .font(.system(size: 30, weight: .black, design: .rounded))
                        .padding(.vertical)
                        .foregroundColor(.indigo)
                    
                    Text("OR")
                    
                    
                    Button("Sign Up", action: {})
                        .foregroundColor(.indigo)
                        .font(.system(size: 25, design: .rounded))
                        .padding(.vertical)
                }
                .padding(.horizontal, 30)
                .frame(width: 300, height: 380)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                
                Spacer()
            }
            
                        
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
