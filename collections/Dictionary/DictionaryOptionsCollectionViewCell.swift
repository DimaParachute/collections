//
//  DictionaryOptionsCollectionViewCell.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 06.12.2021.
//

import UIKit

class DictionaryOptionsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var dictionaryCellLabel: UILabel!
    @IBOutlet weak var dictionaryActivityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        dictionaryCellLabel.textColor = UIColor.systemBlue
    }
}
