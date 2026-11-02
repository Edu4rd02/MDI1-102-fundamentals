// xcode: set sdk=iOS

//
//  DrinkSizeSwitcher.swift
//  
//
//  Created by Jose Eduardo Becerra Flores on 29/10/26.
//

import SwiftUI

struct DrinkSizeSwitcher: View {
    @State private var size = 1
    // 1 -> small
    // 2 -> medium
    // 3 -> large
    
    let icon = Text("🐸")
    let objectName = "Frog"
    
    var body: some View {
        VStack{
            ZStack {
                switch size {
                case 1:
                    icon.font(.system(size:100))
                case 2:
                    icon.font(.system(size:140))
                case 3:
                    icon.font(.system(size:170))
                default:
                    icon.font(.system(size:100))
                }
            }
            .animation(.easeInOut(duration: 0.9), value: size)
            
            switch size {
            case 1:
                Text("Small \(objectName)").font(.title)
            case 2:
                Text("Medium \(objectName)").font(.title)
            case 3:
                Text("Large \(objectName)").font(.title)
            default:
                Text("Small \(objectName)").font(.title)
            }
            
            
            HStack{
                Button("Small"){
                    size = 1
                }
                .tint(.indigo)
                .foregroundStyle(.white)
                .bold()
                Button("Medium"){
                    size = 2
                }
                .tint(.indigo)
                .foregroundStyle(.white)
                .bold()
                .buttonStyle(.glassProminent)
                Button("Large"){
                    size = 3
                }
                .tint(.indigo)
                .foregroundStyle(.white)
                .bold()
            }.buttonStyle(.borderedProminent)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.green.opacity(0.2))
    }
}

#Preview {
    DrinkSizeSwitcher()
}
