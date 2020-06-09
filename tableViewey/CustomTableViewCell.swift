//
//  CustomTableViewCell.swift
//  tableViewey
//
//  Created by Sunghyup Kim on 2020/06/08.
//  Copyright © 2020 SunghyupKim. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var sexImage: UIImageView!
    @IBOutlet weak var profileBreed: UILabel!
    
   
    func setupCellUI(){
        profileImage.layer.cornerRadius = 35
      
        
    }
}
