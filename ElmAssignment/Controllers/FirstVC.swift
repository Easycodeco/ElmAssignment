//
//  FirstVC.swift
//  ElmAssignment
//
//  Created by Mobark Alseif on 05/04/1443 AH.
//

import UIKit

class FirstVC: UITableViewController {
    
    
    // MARK: - ViewModel
    var userVM = UserVM()
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        userVM.fetchUsers()
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userVM.user.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? UserCell else { return UITableViewCell() }
        
        // Configure the cell...
        cell.name.text = userVM.user[indexPath.row].user?.name
        guard let imageData = userVM.user[indexPath.row].user?.profile_image?.large else { return UITableViewCell() }
        // MARK: Load Image With Cacheing..
        cell.profileImage.loadImageWithCache(urlString: imageData)
        
        return cell
        
    }
    // MARK: Set Height For Row At IndexPath
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
}
