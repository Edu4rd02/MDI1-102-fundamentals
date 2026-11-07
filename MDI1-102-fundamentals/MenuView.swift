//
//  MenuView.swift
//  MDI1-102-fundamentals
//
//  Created by Jose Eduardo Becerra Flores on 05/11/26.
//

import SwiftUI

struct ActionButton {
    var label: String
    var icon: String
    var destination: AnyView
}

struct MenuView: View {
    let MenuView:[ActionButton] = [
        ActionButton(
            label: "Drink Size",
            icon: "cup.and.saucer.fill",
            destination: AnyView(DrinkSizeSwitcher())
        ),
        ActionButton(
            label: "Data List View",
            icon: "list.bullet.clipboard.fill",
            destination: AnyView(DataListView())
        ),
        ActionButton(
            label: "Restaurant Info",
            icon: "info.circle.fill",
            destination: AnyView(RestaurantInfoView())
        ),
        ActionButton(
            label: "Bill Calculator",
            icon: "wallet.bifold.fill",
            destination: AnyView(BillCalculatorView())
            
        ),
        ActionButton(
            label: "Reservations",
            icon: "calendar.badge.clock",
            destination: AnyView(ReservationForm())
        )
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment:.center){
                // Title
                Text("Lemon Restaurant")
                    .font(.system(size:50, weight: .heavy))
                    .foregroundStyle(.green)
                    .multilineTextAlignment(.center)
                
                //Subtitle
                Text("Your favorite food")
                    .font(.system(size:20))
                    .bold()
                
                //Icon
                Image(systemName: "fork.knife")
                    .foregroundStyle(.black.opacity(0.6))
                    .font(.system(size:100))
                    .padding(.vertical, 15)
                
                // Menu buttons
                VStack(spacing:20){
                    ForEach(MenuView, id:\.label) { action in
                            NavigationLink {
                                action.destination
                            } label: {
                                HStack {
                                    Image(systemName: action.icon)
                                        .font(.system(size: 25))
                                    Text(action.label)
                                        .font(.system(size: 15, weight: .semibold))
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.green.opacity(0.7))
                                .foregroundStyle(.black.opacity(0.8))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                }
                .padding(.horizontal, 30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow.opacity(0.2))
        }
    }
}

#Preview {
    MenuView()
}
