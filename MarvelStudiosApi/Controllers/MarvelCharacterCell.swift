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
    @IBOutlet weak var heroNameLabel: UILabel!
    var characterIExpect: MarvelCharacter! {
        didSet{
            updateCharacterUI()
           
        }
    }
    
    func updateCharacterUI(){
        heroNameLabel.text = characterIExpect.name
        
           
        
//        let path = characterIExpect.data?.thumbnail?.path
//        let ext = characterIExpect.data?.thumbnail?.extension
      
        let imageURL = characterIExpect.thumbnail.path + "." +
        characterIExpect.thumbnail.ext
        
        ImageHelper.getImageWithPath(path: imageURL) { (error, image) in
            if let error = error {
                print("image error: \(error)")
            } else if let image = image {
                DispatchQueue.main.async {
                    self.characterImage.image = image
                }
            }
        }
        
        
        
        
//        print("This is url is ", imageURL)
    }
}
