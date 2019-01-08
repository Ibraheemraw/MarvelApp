

import UIKit
import WebKit

class MarvelWebsiteVC: UIViewController {
    var comicWebsite: MarvelComic!

    @IBOutlet weak var web: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard !comicWebsite.urls.isEmpty else {
            print("No urls")
            return
        }
    
      
//        guard let urlString = comicWebsite.urls[0].url else {
//            print("Error with url")
//            return
//        }
//
//        guard let url = URL(string: urlString) else {
//            print("Bad url")
//            return
//        }
        let request = URLRequest(url: url)
        web.load(request)
    }
    
    
    
    
}
