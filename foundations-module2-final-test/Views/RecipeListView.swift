//
//  ContentView.swift
//  foundations-module2-final-test
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List (model.recipes) { r in
                NavigationLink {
                    RecipeDetailView(recipe: r)
                } label: {
                    HStack {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(10)
                        
                        Text(r.name)
                            .padding()
                    }
                }
            }
            .navigationTitle("Recipes List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
