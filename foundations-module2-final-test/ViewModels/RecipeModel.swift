//
//  RecipeModel.swift
//  foundations-module2-final-test
//
//  Created by 홍성범 on 2022/02/08.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes: [Recipe]
    
    init () {
        
        recipes = DataService.getRecipeData()
        
    }
    
}
