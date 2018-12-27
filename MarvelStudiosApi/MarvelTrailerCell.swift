//
//  MarvelTrailerCell.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/27/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class MarvelTrailerCell: UITableViewCell {

    @IBOutlet weak var trailerImg: UIImageView!
    var trailerIExpect: Trailer! {
        didSet {
            updateMarvelUI()
        }
    }

    func updateMarvelUI(){
        trailerImg.image = UIImage.init(named: trailerIExpect.thumbnailFileName)
       trailerImg.layer.cornerRadius = 5.0
        trailerImg.layer.masksToBounds = true
    }
    
    
}
