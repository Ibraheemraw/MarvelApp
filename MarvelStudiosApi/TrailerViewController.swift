//
//  ViewController.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/27/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class TrailerViewController: UIViewController {
    @IBOutlet weak var trailerTableView: UITableView!
    var trailers = ["one", "two", "three"]
    override func viewDidLoad() {
        super.viewDidLoad()
        trailerTableView.delegate = self
        trailerTableView.dataSource = self
        
    }


}

extension TrailerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trailers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tCell", for: indexPath)
        let trailersToSet =  trailers[indexPath.row]
        cell.textLabel?.text = trailersToSet
        return cell
    }
    
    
}

extension TrailerViewController: UITableViewDelegate {
    
}
