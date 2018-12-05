//
//  ProductTableViewCell.swift
//  SampleShoppingCart
//
//  Created by Fernando Ortiz on 23/11/2018.
//  Copyright © 2018 Fernando Ortiz. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cantLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
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
        productImageView.image = UIImage(named: product.picture ?? "")
        nameLabel.text = product.name
        cantLabel.text = product.count.description
        priceLabel.text = product.price.moneyDescription
    }
    
}

extension Double {
    var moneyDescription: String{
        return String(format: "$ %.2f", self)
    }
}
