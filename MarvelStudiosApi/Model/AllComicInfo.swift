//
//  AllComicInfo.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 1/3/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import UIKit

struct AllComicInfo: Codable {
   let data: ComicDataWrapper
}

struct ComicDataWrapper: Codable {
    let results: [MarvelComic]
}

struct MarvelComic: Codable {
    let title: String
    let pageCount: Int
    let prices: [MarvelComicPrice]
    let thumbnail: ComicThumbnailWrapper
    let urls: [UrlWrapper]
}
struct MarvelComicPrice: Codable {
    let price: Double?
}
struct UrlWrapper: Codable {
    let type: String?
    let url: String?
}
struct ComicThumbnailWrapper: Codable {
    let path: String
    let comicExt: String
    enum CodingKeys: String, CodingKey {
        case path
        case comicExt = "extension"
    }
    
}
