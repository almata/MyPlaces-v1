//
//  FirstViewController.swift
//  MyPlaces
//
//  Created by Albert Mata Guerra on 28/09/2018.
//  Copyright © 2018 Albert Mata Guerra. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = self.view as! UITableView
        view.delegate = self
        view.dataSource = self
    }

    // MARK: - Methods declared in UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlaceManager.shared().count()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let place = PlaceManager.shared().itemAt(position: indexPath.item)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)
        cell.textLabel?.text = place.name
        cell.detailTextLabel?.text = place.description
        
        return cell
    }
    
    // MARK: - Methods declared in UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let place = PlaceManager.shared().itemAt(position: indexPath.row)
        performSegue(withIdentifier: "ShowPlaceDetail", sender: place)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // MARK: - Navegation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPlaceDetail" {
            if let dc = segue.destination as? DetailController {
                dc.place = sender as? Place
            }
        }
    }
}
