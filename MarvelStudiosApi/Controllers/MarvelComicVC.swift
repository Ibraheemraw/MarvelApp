//
//  MarvelComicVC.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 1/3/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class MarvelComicVC: UIViewController {
    @IBOutlet weak var comicSearchbar: UISearchBar!
    @IBOutlet weak var comicTableView: UITableView!
    var comics = [MarvelComic](){
        didSet{
            DispatchQueue.main.async {// dispatch back to the main thread
                self.comicTableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        comicTableView.dataSource = self
       
        comicSearchbar.delegate = self
        getData()
    }
    
    func getData(){
        ComicApiClient.searchComics { (error, onlineComics) in
            self.comics = onlineComics ?? []
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailComicVC, let indexPath = comicTableView.indexPathForSelectedRow else {
            fatalError("Error with the perapre for segue function")
        }
        destination.comicsIExpect = comics[indexPath.row]
    }
}
extension MarvelComicVC: UISearchBarDelegate {
    
}

extension MarvelComicVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComicCell", for: indexPath)
        let comicToSet = comics[indexPath.row]
        cell.textLabel?.text = comicToSet.title
    
        
        return cell
    }
    
    
}
