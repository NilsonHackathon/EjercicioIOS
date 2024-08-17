//
//  HomeCollectionViewCell.swift
//  PoryectoPruebaClase
//
//  Created by LABORATORIO MAC UAM on 17/8/24.
//

import UIKit


struct MyCustomStruct {
    let myImage: UIImage
    let myLabel: String
}

class HomeCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(data: MyCustomStruct){
        myImageView.image = data.myImage
        myLabel.text = data.myLabel
    }

}
