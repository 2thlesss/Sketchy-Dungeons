//
//  TextUIController.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/24/23.
//

import Foundation
import SwiftUI
import UIKit

struct UIController {
    struct TitleTextController: View {
        var title : String
        var body: some View {
            
            Text(title)
                .font(.custom("AmericanTypewriter-Bold", size: 50))
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y:5)
            //center the text
                .multilineTextAlignment(.center)
                .padding()
            
            //soft blue background oval behind the text
                .background(Color(red: 5/255, green: 118/255, blue: 179/255))
                .cornerRadius(20)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y:5)
                .padding()
        }
    }
    
    struct TextFieldController: View {
        @Binding var text: String
           let placeholder: String

           var body: some View {
               TextField(placeholder, text: $text)
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.black)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 1))
    }
    }
    struct NavigationLinkController<Destination: View>: View {
        let destination: Destination
        let label: String
        let fontSize: CGFloat
        
        var body: some View {
            NavigationLink(destination: destination) {
                Text(label)
                    .font(.custom("AmericanTypewriter-Bold", size: fontSize))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                    .cornerRadius(15.0)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
            }
        }
    }
    struct ProfileButtonText: View {
        let profileText : String
        var body: some View {
            Text(profileText)
                .bold()
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 40)
                .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                .cornerRadius(15.0)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
        }
    }
    struct ImageViewController: View {
        var picture : String
        var body: some View {
            Image (picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
                .frame(width: 300, height: 175)
                .clipShape(Capsule())
                .shadow(radius: 10, x: 12, y: 10)
                Spacer(minLength: 40)
                
        }
    }
    struct BackgroundGradient: View {
        var body: some View {
            LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
    struct UiDivider: View {
        var body: some View {
            Divider()
                .background(Color.black)
                .frame(height: 20)
                .padding(.horizontal,20)
                .overlay(
                    Divider()
                        .background(Color.black)
                        .frame(height: 20)
                )
        }
    }
}
