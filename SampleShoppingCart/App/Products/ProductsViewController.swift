//
//  ProductsViewController.swift
//  SampleShoppingCart
//
//  Created by Fernando Ortiz on 23/11/2018.
//  Copyright © 2018 Fernando Ortiz. All rights reserved.
//

import UIKit

final class ProductsViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel: ProductsViewModel = ProductsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

    private func configureTableView() {
        tableView.register(UINib.init(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ProductsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.products.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ProductTableViewCell.height
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        cell.configure(product: viewModel.products[indexPath.row])
        return cell
    }
}
