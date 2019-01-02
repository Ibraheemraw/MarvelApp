//
//  MarverCharacterCell.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 1/1/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class MarvelCharacterCell: UITableViewCell {

    @IBOutlet weak var characterImage: UIImageView!
    var characterIExpect: Character! {
        didSet{
            updateCharacterUI()
           
        }
    }
    
    func updateCharacterUI(){
        guard let path = characterIExpect.data?.thumbnail?.path, let ext = characterIExpect.data?.thumbnail?.extension else {return}
        let imageURL = path + ext
        characterImage.image = UIImage.init(contentsOfFile: imageURL)
        print("This is url is ", imageURL)
    }
}
