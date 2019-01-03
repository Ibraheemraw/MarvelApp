//
//  DetailComicVC.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 1/3/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class DetailComicVC: UIViewController {
    @IBOutlet weak var comicImg: UIImageView!
    @IBOutlet weak var comicPriceLabel: UILabel!
    var comicsIExpect: MarvelComic!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVCItems()
    }
    
    func setUpVCItems(){
        comicPriceLabel.text = "Number of Pages: \(comicsIExpect.pageCount)"
        let imageUrl = comicsIExpect.thumbnail.path + "." + comicsIExpect.thumbnail.comicExt
        ImageHelper.getImageWithPath(path: imageUrl) { (error, image) in
            if let error = error {
                print("image error: \(error)")
            } else if let image = image {
                DispatchQueue.main.async {
                    self.comicImg.image = image
                }
            }
        }
    }
    

}
