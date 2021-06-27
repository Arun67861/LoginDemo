//
//  SignUpView.swift
//  LoginDemo
//
//  Created by Arun Jayasree Kumar on 27/06/21.
//

import SwiftUI

struct SignUpView: View {
    @State var userNameText: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                VStack {
                    Text("Registration")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                    Spacer()
                    VStack {
                        TextfieldCustom(titleText: "Enter the username", errorText: "Enter valid username", textfieldValue: $userNameText)
                        TextfieldCustom(titleText: "Enter the username", errorText: "", textfieldValue: $userNameText)
                        TextfieldCustom(titleText: "Enter the username", errorText: "", textfieldValue: $userNameText)
                        TextfieldCustom(titleText: "Enter the username", errorText: "", textfieldValue: $userNameText)
                    }
                    Button(action: {}, label: {
                        Text("Sign Up")
                    })
                    .frame(width: 300, height: 50, alignment: .center)
                    
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color(.darkGray)))
                    .padding()
                    Spacer()
                }
            }
        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct TextfieldCustom: View {
    let titleText: String
    let errorText: String
    @Binding var textfieldValue: String
    var body: some View {
        VStack(alignment: .trailing) {
            TextField(titleText, text: $textfieldValue)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            if !errorText.isEmpty {
                Text(errorText)
                    .font(.system(size: 18))
                    .foregroundColor(Color(.systemRed))
            }
        }
        .padding(.horizontal)
    }
}
