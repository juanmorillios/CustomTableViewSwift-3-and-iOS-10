//
//  Product.swift
//  CustomTableViewSwift3
//
//  Created by Juan Morillo on 15/8/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import Foundation
import UIKit

class Product: NSObject {
    var imageProduct : UIImage!
    var titleProduct : String!
    var tempProduct : String!
    var refProduct : String!
    var priceProduct : Double!
    
    
    init(imageProduct: UIImage, titleProduct: String, tempProduct: String, refProduct: String, priceProduct: Double) {
        
        self.imageProduct = imageProduct
        self.titleProduct = titleProduct
        self.tempProduct = tempProduct
        self.refProduct = refProduct
        self.priceProduct = priceProduct
    }
    
    
    
    
    
    
    
}

