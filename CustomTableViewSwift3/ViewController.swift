//
//  ViewController.swift
//  CustomTableViewSwift3
//
//  Created by Juan Morillo on 15/8/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var product : [Product]  = []
   

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 150
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    
     var products = Product(imageProduct: #imageLiteral(resourceName: "bob0"),
                          titleProduct: "Higth",
                          tempProduct: "Verano 2016",
                          refProduct: "BOB-023E",
                          priceProduct: 35.0)
        
     product.append(products)
        
    
        products = Product(imageProduct: #imageLiteral(resourceName: "bob1"),
                               titleProduct: "Bob Hell",
                               tempProduct: "Verano 2016",
                               refProduct: "BOB-023E",
                               priceProduct: 40.0)
        
        product.append(products)

        
        products = Product(imageProduct: #imageLiteral(resourceName: "bob2"),
                               titleProduct: "Chr -4",
                               tempProduct: "Verano 2016",
                               refProduct: "BOB-023E",
                               priceProduct: 37.0)
        
        product.append(products)

        
        products = Product(imageProduct: #imageLiteral(resourceName: "bob3"),
                               titleProduct: "Deth",
                               tempProduct: "Verano 2016",
                               refProduct: "BOB-023E",
                               priceProduct: 42.0)
        
        product.append(products)

        products = Product(imageProduct: #imageLiteral(resourceName: "bob4"),
                           titleProduct: "Bob Marley 3",
                           tempProduct: "Verano 2016",
                           refProduct: "BOB-023E",
                           priceProduct: 25.0)
        
        product.append(products)
        
        products = Product(imageProduct: #imageLiteral(resourceName: "bob5"),
                           titleProduct: "Bob Marley 5",
                           tempProduct: "Verano 2016",
                           refProduct: "BOB-023E",
                           priceProduct: 29.0)
        
        product.append(products)


        
        
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       

    }
    

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return product.count
        
        
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        
        let cellID = "cell"
    
        let cellProducts = self.product[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CustomTableViewCell
      
        cell.titleLabel.text = "Model:\(cellProducts.titleProduct!)"
        cell.imageProduct.image = cellProducts.imageProduct!
        cell.tempLabel.text = "Tem:\(cellProducts.tempProduct!)"
        cell.refLabel.text = "Ref:\(cellProducts.refProduct!)"
        cell.priceLabel.text =  "Price:\(cellProducts.priceProduct!) €"
        
    
        return cell
        
    }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    

   }





