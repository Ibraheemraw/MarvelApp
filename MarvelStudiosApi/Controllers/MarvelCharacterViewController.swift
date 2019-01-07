//
//  CharacterViewController.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/31/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class MarvelCharacterViewController: UIViewController {
    @IBOutlet weak var characterTableView: UITableView!
    @IBOutlet weak var characterSearchBar: UISearchBar!
    var characters = [MarvelCharacter](){
        didSet{
            
            DispatchQueue.main.async {// dispatch back to the main thread
                self.characterTableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        characterTableView.dataSource =  self
        characterTableView.delegate = self
        characterSearchBar.delegate = self
        getData()
//        CharacterAPIClient.searchCharacters()
        
       
    }
    
    func getData() {
        CharacterAPIClient.searchCharacters { (error, onlineCharacters) in
            self.characters = onlineCharacters ?? []
        }
    }

}

extension MarvelCharacterViewController: UISearchBarDelegate{
    
}
extension MarvelCharacterViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
extension MarvelCharacterViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as? MarvelCharacterCell else {return UITableViewCell()}
        let charactersToSet = characters[indexPath.row]
        cell.characterIExpect = charactersToSet
        return cell
    }
    
    
}
