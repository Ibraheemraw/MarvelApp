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
    @IBOutlet weak var heroDescription: UITextView!
    var characterIExpect: MarvelCharacter! {
        didSet{
            updateCharacterUI()
           
        }
    }
    
    func updateCharacterUI(){
        
        heroNameLabel.text = characterIExpect.name
        heroDescription.textColor = .white
        heroDescription.backgroundColor = UIColor.init(red: CGFloat(161/255), green: CGFloat(12/255), blue: CGFloat(31/255), alpha: CGFloat(0))
        if characterIExpect.description == "" {
            heroDescription.text = "This Character is a force not be messed with"
        } else {
             heroDescription.text = characterIExpect.description
        }
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
    }
}
