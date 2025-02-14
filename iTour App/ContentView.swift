//
//  ContentView.swift
//  iTour App
//
//  Created by kiyegga francis on 2025-02-13.
//
import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var destinations: [Destination]
    var body: some View {
        NavigationStack {
            List {
                ForEach(destinations) { destination in
                    VStack{
                        Text(destination.name)
                            .font(.headline)
                        Text(destination.date.formatted(date: .long, time: .shortened))
                    }
                    
                }
                
            }.navigationTitle("iTour")
                .toolbar{
                    Button("Add Samople", action: addSample)
                }
        }
        
    }
    func addSample(){
        let rome = Destination(name: "Rome")
        let florence = Destination(name: "Florence")
        let paris = Destination(name: "Paris")
        
        modelContext.insert(rome)
        modelContext.insert(florence)
            modelContext.insert(paris)
    }
}

#Preview {
    ContentView()
}
