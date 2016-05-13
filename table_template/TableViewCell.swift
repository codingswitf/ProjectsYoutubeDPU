//
//  TableViewCell.swift
//  table_template
//
//  Created by DE DPU on 5/11/2559 BE.
//  Copyright © 2559 Shuchen Du. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }


    
    var Save: save?{
        didSet{
            if let save = Save, title = title{
            title.text = save.title
            }
        }
        
    }
    
}
