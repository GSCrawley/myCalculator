//
//  ContentView.swift
//  my_Calc
//
//  Created by Gideon S Crawley on 2/12/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env: GlobalState
    var body: some View {
      ZStack {
        Color
           .black
//           .ignoreSafeArea()
        VStack(spacing:8) {
          HStack() {
            Text(env.display)
                .font(.system(size: 80))
                .foregroundColor(.red)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(20)
            
          }
            
            HStack(spacing: 8){
                self.makeButton(key: .allClear, color: Color( white:0.33, opacity: 1.0))
                self.makeButton(key: .plusMinus, color: Color( white:0.33, opacity: 1.0))
                self.makeButton(key: .percent, color: Color( white:0.33, opacity: 1.0))
                self.makeButton(key: .divide, color: .gray)
            }
            
            HStack(spacing: 8) {
                self.makeButton(key: .seven)
                self.makeButton(key: .eight)
                self.makeButton(key: .nine)
                self.makeButton(key: .multiply, color: .gray)
            }
            
            HStack(spacing: 8) {
                               self.makeButton(key: .six)
                               self.makeButton(key: .five)
                               self.makeButton(key: .four)
                               self.makeButton(key: .minus, color: .orange)
                           }
            
            HStack(spacing: 8) {
                self.makeButton(key: .one)
                self.makeButton(key: .two)
                self.makeButton(key: .three)
                self.makeButton(key: .minus, color: .gray)
            }
            
            HStack(spacing: 8) {
                self.makeButton(key: .zero)
                self.makeButton(key: .dot, color: Color( white:0.33, opacity: 1.0))
                self.makeButton(key: .equal, width: 140, color: .gray)
                }
            }
            Spacer()
        }
    }

    func makeButton(key: CalculatorKey = .zero, width: CGFloat = 70, height: CGFloat = 70, color: Color = .orange, foregroundColor: Color = .white) -> some View {
        return AnyView(Button(action: {env.keyPressed(key: key)
        }, label: {
            Text(key.rawValue).frame(width: width, height: height, alignment: .center)
                .foregroundColor(.black)
                .background(color)
                .cornerRadius(height / 2)
                .font(.system(size: 36))
                .padding(2)
        }))
        }
}

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalState())
    }
}
      
