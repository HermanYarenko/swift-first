//
//  FriendViewController.swift
//  zd1
//
//  Created by Герман Яренко on 20.11.23.
//

import UIKit

class FriendViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        title = "Friend"
        navigationController?.navigationBar.backgroundColor = .white
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomsCell()
    }
    
}
