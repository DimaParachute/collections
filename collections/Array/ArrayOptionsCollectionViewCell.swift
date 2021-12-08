//
//  ArrayOptionsCollectionViewCell.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 02.12.2021.
//

import UIKit

class ArrayOptionsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellActivityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        cellLabel.textColor = UIColor.systemBlue
    }
}
