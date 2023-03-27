//
//  ThirdViewController.swift
//  RequestClousureTest3
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var connection3: PizzaElement?
    
    @IBOutlet weak var myImagePizza: UIImageView!
    @IBOutlet weak var namePizza: UILabel!
    @IBOutlet weak var ratingPizza: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenThree()
    }
    
    func screenThree() {
        let urlImage = URL(string: connection3?.imageURL ?? "")
        myImagePizza.sd_setImage(with: urlImage)
        namePizza.text = "Pizza de \(connection3?.name ?? "")"
        ratingPizza.text = "Nota da Pizza: \(connection3?.rating ?? 0)"
    }
}
