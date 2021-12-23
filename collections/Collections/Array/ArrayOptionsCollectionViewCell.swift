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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        cellLabel.isHidden = false
        cellActivityIndicator.stopAnimating()
        cellActivityIndicator.isHidden = true
    }
    
    func configure(withOperation operation: Operation) {
        switch operation.state {
        case .initial:
            cellLabel.isHidden = false
            cellActivityIndicator.isHidden = true
            cellLabel.text = operation.name
            cellLabel.textColor = UIColor.systemBlue
        case .computing:
            cellLabel.isHidden = true
            cellActivityIndicator.isHidden = false
            cellActivityIndicator.startAnimating()
        case .computed:
            cellLabel.isHidden = false
            cellActivityIndicator.stopAnimating()
            cellActivityIndicator.isHidden = true
            cellLabel.text = operation.name.trimmingCharacters(in: .punctuationCharacters) + " - " + (operation.output ?? "?")
            cellLabel.textColor = UIColor.black
        }
    }
}
