//
//  DataListView.swift
//  
//
//  Created by Jose Eduardo Becerra Flores on 31/10/26.
//

import SwiftUI

struct DataListView: View {
    var studentsList:[String] = ["Jade","Eduardo","Leo","Angela"]
    let favoritePlayersList:[[String]] = [["Stephen Curry", "(Chef Curry)"], ["Anthony Edwards", "(Ant-Man)"], ["Kawhi Leonard", "(The Klaw)"], ["Giannis Antetokounmpo", "(Greek Freak)"], ["Victor Wembanyama", "(The Alien)"]]
    
    var body: some View {
        List{
            Section(header: Text("Students")){
                ForEach(studentsList, id:\.self) { studentName in
                    Text(studentName)
                }
            }
            Section(header: Text("Favorite basketball players")){
                ForEach(favoritePlayersList, id:\.self) { playerInformation in
                    HStack{
                        Text("\(playerInformation[0])")
                        Text("\(playerInformation[1])").italic().foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}

#Preview {
    DataListView()
}
