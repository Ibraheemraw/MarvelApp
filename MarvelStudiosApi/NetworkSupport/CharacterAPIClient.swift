//
//  CharacterAPIClient.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/31/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import Foundation

final class CharacterAPIClient {
    static func searchCharacters( callBack: @escaping(Error?, [MarvelCharacter]?) -> Void ){
        // endpoint = url
        let urlString = "https://gateway.marvel.com:443/v1/public/characters?events=\(SecretKeys.events)&ts=\(SecretKeys.ts)&apikey=\(SecretKeys.apiKey)&hash=\(SecretKeys.hash)"
        guard let url = URL(string: urlString) else {
            callBack("bad url \(urlString)" as? Error, nil)
            return
        }
        URLSession.shared.dataTask(with: url){(data, response, error) in
            if let response = response as? HTTPURLResponse {
                print("response status code is \(response.statusCode)")
            }
            if let error = error {
              callBack(error, nil)
            } else if let data = data  {
                //decoding of JSON using JSON decoder. it might throw and errror so we have to set up a do catch
                do {
                    let results = try JSONDecoder().decode(AllInfo.self, from: data)
                    let characters = results.data.results
                   
                    callBack(nil, characters)
                  
                } catch {
                    callBack(error, nil)
                }
            }
            
        }.resume()
    }
    
    
}
