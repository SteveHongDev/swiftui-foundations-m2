//
//  DataService.swift
//  foundations-module2-final-test
//
//  Created by 홍성범 on 2022/02/08.
//

import Foundation

class DataService {
    
    static func getRecipeData() -> [Recipe] {
        
        let stringPath = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard let stringPath = stringPath else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: stringPath)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for recipe in recipeData {
                    recipe.id = UUID()
                }
                
                return recipeData
                
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        return [Recipe]()

    }
}
