//
//  ContentView.swift
//  appfjnjsf
//
//  Created by Dana Schanker on 2/17/23.
//
import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)


struct ContentView: View {
   

    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView {
        VStack {
            Image("userImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            
            TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Text("LOGIN")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
            
            //NavigationView {
                     VStack {
                        Text("Navigation Link below:")
                        NavigationLink(destination: HomePageView()) {
                           Text("Navigate here.")
                        }
                     }
                  }
                   
            Button(action: {print("Button tapped")}) {
           
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


