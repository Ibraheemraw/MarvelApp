//
//  CharacterViewController.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/31/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {
    @IBOutlet weak var characterTableView: UITableView!
    @IBOutlet weak var characterSearchBar: UISearchBar!
    var characters = [Character]()
    override func viewDidLoad() {
        super.viewDidLoad()
        characterTableView.dataSource =  self
        characterTableView.delegate = self
        characterSearchBar.delegate = self
        CharacterAPIClient.searchCharacters()
        
       
    }

}

extension CharacterViewController: UISearchBarDelegate{
    
}
extension CharacterViewController: UITableViewDelegate {
    
}
extension CharacterViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as? MarverCharacterCell else {return UITableViewCell()}
        let charactersToSet = characters[indexPath.row]
        return UITableViewCell()
    }
    
    
}
