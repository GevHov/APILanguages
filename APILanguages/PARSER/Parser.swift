//
//  Parser.swift
//  APILanguages
//
//  Created by Gevorg Hovhannisyan on 10.02.22.
//

import Foundation

struct Parser {
    
    func parse(comp: @escaping ([Datum]) ->()) {
        
        let api = URL(string: "http://37.252.64.49:50000/Languages")
        
        URLSession.shared.dataTask(with: api!){
            data, response, error in
            
            if error != nil {
                
                print(error?.localizedDescription as Any)
                return
            }
            do {
                
                let result = try? JSONDecoder().decode(Result.self, from: data!)
                
                comp((result?.data)!)
                
            } catch {
                
            }
        }.resume()
    }
}
