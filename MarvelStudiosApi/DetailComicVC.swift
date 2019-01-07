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
    @IBOutlet weak var comicDescrip: UITextView!
    var comicsIExpect: MarvelComic!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVCItems()
        
    }
    
    func setUpVCItems(){
        
        DispatchQueue.global().async {
            DispatchQueue.main.async {
                self.comicDescrip.textColor = .white
                self.comicDescrip.backgroundColor = UIColor.init(red: CGFloat(161/255), green: CGFloat(12/255), blue: CGFloat(31/255), alpha: CGFloat(0))
                self.comicPriceLabel.text = "Number of Pages: \(self.comicsIExpect.pageCount)"
            }
            let imageUrl = self.comicsIExpect.thumbnail.path + "." + self.comicsIExpect.thumbnail.comicExt
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
}
