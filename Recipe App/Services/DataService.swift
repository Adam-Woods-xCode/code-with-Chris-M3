//
//  DataService.swift
//  Recipe App
//
//  Created by Adam Woods on 16/02/2021.
//

import Foundation

class DataService {
    
    func getLocalData() -> [pizza] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(fileURLWithPath: path)
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                   
                    var jsonPizzas = try decoder.decode([pizza].self, from: data)
                 
                    for index in 0..<jsonPizzas.count {
                        jsonPizzas[index].id = UUID()
                    }
                    
                    self.pizzas = jsonPizzas
                    
                    }
                    
                }
                
                catch {
                    print(error)
                }
                
            }
            
            catch {
                print(error)
            }
        }
    }
    
    
    

