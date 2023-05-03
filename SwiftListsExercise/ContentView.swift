//
//  ContentView.swift
//  SwiftListsExercise
//
//  Created by Matthew RIley on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    
    struct Item: Identifiable {
        let id: UUID = UUID()
        
        let itemName: String
        let price: String
        
    }
    
    let storeItems: [Item] = [
        Item(itemName: "Soccerball", price: "5.00"),
        Item(itemName: "Basketball", price: "6.00"),
        Item(itemName: "Football", price: "7.00"),
        Item(itemName: "Baseball", price: "4.00"),
        Item(itemName: "Tennisball", price: "1.00"),
        Item(itemName: "Volleyball", price: "4.00"),
        Item(itemName: "Hockey Puck", price: "2.00")
    ]
    
    var body: some View {
        VStack {
            
            Text("Sports-R-Us")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            List(storeItems){ item in
                
                HStack {
                    Text(item.itemName)
                        .font(.title)
                    
                    Spacer()
                    
                    Text(item.price)
                        .font(.title)
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
