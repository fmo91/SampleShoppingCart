//
//  ProductTableViewCell.swift
//  SampleShoppingCart
//
//  Created by Fernando Ortiz on 23/11/2018.
//  Copyright © 2018 Fernando Ortiz. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    static var height: CGFloat {
        return 60.0
    }
    
    func configure(product: Product) {
        
    }
    
}
