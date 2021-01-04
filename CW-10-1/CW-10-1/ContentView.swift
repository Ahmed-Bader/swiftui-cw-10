//
//  ContentView.swift
//  CW-10-1
//
//  Created by Ahmed Alkhuder on 4/1/21.
//

import SwiftUI

struct ContentView: View {
    @State var currentMood = Mood.happy
    var body: some View {
        VStack
        {
            Text("Mood Check")
                .font(.largeTitle)
            
            Spacer()
            
            HStack{
                Text("I Feel")
                switch currentMood{
                case .good:
                    Text("Good!")
                case .happy:
                    Text("Happy!")
                case .meh:
                    Text("okay i guess")
                case .sad:
                    Text("hello from the other siiiiide")
                }
            }
            Divider()
            
            HStack{
                Button(action: {
                    currentMood = .happy
                }, label: {
                    Text("😁")
                })
                
                Button(action: {
                    currentMood = .good
                }, label: {
                    Text("😇")
                })
                Button(action: {
                    currentMood = .meh
                }, label: {
                    Text("😕")
                })
                Button(action: {
                    currentMood = .sad
                }, label: {
                    Text("😢")
                })
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Mood {
    case happy, sad, meh, good
}

/*func feeling (mood: Mood) -> String?
 {
 switch mood {
 case .good:
 return "Good!"
 case .happy:
 return "Happy!"
 case .meh:
 return "okay i guess"
 case .sad:
 return "hello from the other siiiiide"
 
 }
 }*/
