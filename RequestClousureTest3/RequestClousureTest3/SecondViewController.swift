//
//  SecondViewController.swift
//  RequestClousureTest3
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var connection2: PizzaElement?
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var pricePizza1: UILabel!
    @IBOutlet weak var pricePizza2: UILabel!
    @IBOutlet weak var pricePizza3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen2()
    }
    
    func setupScreen2() {
        let urlImage = URL(string: connection2?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
        pricePizza1.text = "Pizza Pequena: R$\(connection2?.priceP ?? 0.0)"
        pricePizza2.text = "Pizza Media: R$\(connection2?.priceM ?? 0.0)"
        pricePizza3.text = "Pizza Grande: R$\(connection2?.priceG ?? 0.0)"
    }
}
