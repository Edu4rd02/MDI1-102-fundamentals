//
//  RestaurantInfoView.swift
//  MDI1-102-fundamentals
//
//  Created by Jose Eduardo Becerra Flores on 03/11/26.
//

import SwiftUI

struct RestaurantInfoView: View {
    let socialMedia:[String: String] = [
        "Instagram": "@lemon-restaurant",
        "Facebook": "facebook.com/lemon",
        "TikTok": "@lemon.restaurant"
    ]
    let staff:[String:String] = [
        "Chef":"Anthony Jordan",
        "Waiter":"Miguel Angelo",
        "Steward":"Nolan Bradford",
        "Manager":"Brandon Ingram",
        "Hostess":"Camila Norris",
        "Maître d'":"Johanna Morgan"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header:Text("Social Media")){
                    ForEach(Array(socialMedia), id:\.key) { key, value in
                        HStack{
                            Text(key).bold()
                            Spacer()
                            Text(value).foregroundStyle(.secondary)
                        }
                    }
                }
                Section(header:Text("Staff")){
                    ForEach(Array(staff), id:\.key) { key, value in
                        HStack{
                            Text(key).bold()
                            Spacer()
                            Text(value).foregroundStyle(.secondary)
                        }
                    }
                }
            }.navigationTitle(Text("Restaurant Information"))
        }
    }
}

#Preview {
    RestaurantInfoView()
}
