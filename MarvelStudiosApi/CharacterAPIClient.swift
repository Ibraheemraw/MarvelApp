//
//  CharacterAPIClient.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/31/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import Foundation

final class CharacterAPIClient {
    static func searchCharacters(){
        // endpoint = url
        let urlString = "https://gateway.marvel.com:443/v1/public/characters?&ts=\(SecretKeys.ts)&apikey=\(SecretKeys.apiKey)&hash=\(SecretKeys.hash)"
        guard let url = URL(string: urlString) else {
            print("bad url: \(urlString)")
            return
        }
        URLSession.shared.dataTask(with: url){(data, response, error) in
            if let response = response as? HTTPURLResponse {
                print("response status code is \(response.statusCode)")
            }
            if let error = error {
               print("error is \(error)")
            } else if let data = data  {
                //decoding of JSON using JSON decoder. it might throw and errror so we have to set up a do catch
                do {
                    let charcaters = try JSONDecoder().decode(Character.self, from: data)
                    print("Display characterData: \(charcaters)")
                } catch {
                    print("error is \(error)")
                }
            }
            
        }.resume()
    }
    
    
}
