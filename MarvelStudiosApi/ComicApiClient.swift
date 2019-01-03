//
//  ComicApiClient.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 1/3/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import Foundation

final class ComicApiClient {
    static func searchComics(callBack: @escaping(Error?, [MarvelComic]?) -> Void) {
        let urlString = "https://gateway.marvel.com:443/v1/public/comics?format=comic&title=Avengers&ts=\(SecretKeys.ts)&apikey=\(SecretKeys.apiKey)&hash=\(SecretKeys.hash)"
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
                    let results = try JSONDecoder().decode(AllComicInfo.self, from: data)
                    let comics = results.data.results
                    
                    callBack(nil, comics)
                    
                } catch {
                    print(error)
                    callBack(error, nil)
                }
            }
            
            }.resume()
    }
}
