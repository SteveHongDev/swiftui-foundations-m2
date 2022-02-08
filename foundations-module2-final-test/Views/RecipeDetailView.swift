//
//  RecipeDetailView.swift
//  foundations-module2-final-test
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.system(.title))
                        .padding(.bottom)
                    ForEach (recipe.ingredients, id: \.self) { item in
                        Text("★ \(item)")
                            .padding(.bottom, 1)
                    }
                    
                    Divider()
                    
                    Text("Directions")
                        .font(.system(.title))
                        .padding(.bottom)
                    ForEach (0..<recipe.directions.count) { index in
                        Text("\(index + 1). \(recipe.directions[index])")
                            .padding(.bottom, 1)
                    }
                }
                .padding()
                
            }
            
        }
        .navigationTitle(recipe.name)
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
