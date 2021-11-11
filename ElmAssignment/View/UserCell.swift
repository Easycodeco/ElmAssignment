//
//  UserCell.swift
//  ElmAssignment
//
//  Created by Mobark Alseif on 05/04/1443 AH.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImage?.layer.cornerRadius = 12
        profileImage?.clipsToBounds = true
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // invoke superclass implementation
        self.name.text = nil
        self.profileImage.image = nil
    }
}
