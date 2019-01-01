//
//  MarverCharacterCell.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 1/1/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class MarverCharacterCell: UITableViewCell {

    @IBOutlet weak var characterImage: UIImageView!
    var characterIExpect: Character! {
        didSet{
            updateCharacterUI()
        }
    }
    
    func updateCharacterUI(){
        characterImage.image = UIImage.init(contentsOfFile: characterIExpect.data?.thumbnail)
    }
}
