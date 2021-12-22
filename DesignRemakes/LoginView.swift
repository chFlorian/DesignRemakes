//
//  LoginView.swift
//  DesignRemakes
//
//  Created by Florian Schweizer on 22.12.21.
//  Design from https://dribbble.com/shots/15809819-Login-Account-Truck-Manager
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            Group {
                Text("Login to ") + Text("beUpToDate").foregroundColor(.blue)
            }
            .font(.title.weight(.semibold))
            
            Text("Trailer info at a glance")
                .fontWeight(.light)
            
            Spacer()
            
            VStack(spacing: 16) {
                // username
                InputField(title: "User name")
                // orga
                InputField(title: "Organization")
                // password
                InputField(title: "Password")
                
                HStack {
                    Button {
                        //
                    } label: {
                        HStack {
                            Image(systemName: "faceid")
                            Text("Face ID").bold()
                        }
                    }
                    .buttonStyle(RoundedButton(stroked: true))
                    
                    Button("Login") { }
                    .buttonStyle(RoundedButton(stroked: false))
                }
            }
            
            Spacer()
            
            Button("Forgot your password or username?") {}
            .foregroundColor(.black)
        }
        .padding()
        .background(.gray.opacity(0.3))
    }
}

struct InputField: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.secondary)
            
            TextField("", text: .constant(""))
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 16).fill(.white))
        .overlay(alignment: .trailing) {
            Button("X") {}
            .foregroundColor(.black)
            .font(.body.weight(.semibold))
            .padding(.trailing)
        }
    }
}

struct RoundedButton: ButtonStyle {
    var stroked = true
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 32)
            .frame(maxWidth: .infinity)
            .background {
                if stroked {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.black)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.black)
                }
            }
            .foregroundColor(stroked ? .black : .white)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
