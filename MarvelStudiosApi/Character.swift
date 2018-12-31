//
//  Character.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/31/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class Character: Codable {
    let code: Int?
    let status: String?
    let copyright: String?
    let attributionText: String?
    let attributionHTML: String?
    let etag: String?
    class Data: Codable {
        let offset: Int?
        let limit: Int?
        let total: Int?
        let count: Int?
        class SearchChacterData: Codable {
            let results: [Data]?
        }
        let id: Int?
        let name: String?
        let description: String?
        let modified: Date?
        let resourceURI: String?
        class ThumbnailData: Codable {
            let path: String?
            let `extension`: String?
        }
        let thumbnail: ThumbnailData?
        class ComicData: Codable {
            let available: Int?
            let returned: Int?
            let collectionURI: String?
            class SearchItemData: Codable {
                let item: [ComicData]?
            }
            let resourceURI: String?
            let name: String?
        }
        let comic: ComicData?
        class StoryData: Codable {
            let available: Int?
            let returned: Int?
            let collectionURI: String?
            class SearchItemData: Codable {
                let item: [StoryData]?
            }
            let resourceURI: String?
            let name: String?
            let type: String?
        }
    }
    let data: Data?
}
