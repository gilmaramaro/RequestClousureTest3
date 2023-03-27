//
//  MyTableViewCell.swift
//  RequestClousureTest3
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit
import SDWebImage

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var namePizza: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupCell(myCell: PizzaElement?) {
        let urlImage = URL(string: myCell?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        namePizza.text = myCell?.name
    }
}
