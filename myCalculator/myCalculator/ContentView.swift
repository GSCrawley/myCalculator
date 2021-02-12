//
//  ContentView.swift
//  my_Calc
//
//  Created by Gideon S Crawley on 2/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        Color
           .black
//           .ignoreSafeArea()
        VStack(spacing:4) {
          HStack() {
            Text("0")
                .font(.system(size: 80))
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding()
            
          }
            
            HStack(spacing: 4) {
                self.makeButton(label: "7")
                self.makeButton(label: "8")
                self.makeButton(label: "9")
                self.makeButton(label: "X")
            }
            
            HStack(spacing: 4) {
                self.makeButton(label: "4")
                self.makeButton(label: "5")
                self.makeButton(label: "6")
                self.makeButton(label: "+")
            }
            
            HStack(spacing: 4) {
                self.makeButton(label: "1")
                self.makeButton(label: "2")
                self.makeButton(label: "3")
                self.makeButton(label: "-")
            }
            
            HStack(spacing: 4) {
                self.makeButton(label: "0", width: 148)
                self.makeButton(label: ".")
                self.makeButton(label: "=")
                }
            }
        }
    }

    func makeButton(label: String = "0", width: CGFloat = 70, height: CGFloat = 70) -> some View {
        return AnyView(Button(action: {print("Button pressed")}, label: {
            Text(label).frame(width: width, height: height , alignment: .center)
                .foregroundColor(.white)
                .background(Color.orange)
                .cornerRadius(height / 2)
                .font(.title)
                .padding(2)
        }))
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
      
