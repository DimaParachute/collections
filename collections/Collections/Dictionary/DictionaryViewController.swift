//
//  DictionaryViewController.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 25.11.2021.
//

import UIKit

class DictionaryViewController: UIViewController, UICollectionViewDelegate {
    
    //MARK:- Creating class instances
    let dictionaryOperations = DictionaryOperations()
    
    //MARK:- IBOutlets
    @IBOutlet weak var arrAndDictCreatingActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var arrayLabel: UILabel!
    @IBOutlet weak var dictionaryManipulationOptionsCollectionView: UICollectionView!
    @IBOutlet weak var dictionaryLabel: UILabel!
    
    //MARK:- Default values
    let dictionaryCellIdentifier = "dictionaryOptionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayLabel.isHidden = true
        dictionaryLabel.isHidden = true
        dictionaryManipulationOptionsCollectionView.delegate = self
        dictionaryManipulationOptionsCollectionView.dataSource = self
        dictionaryManipulationOptionsCollectionView.isHidden = true
        arrAndDictCreatingActivityIndicator.startAnimating()
        dictionaryOperations.createArray()
        dictionaryOperations.createDictionary(completion: { [weak self] output in
            self?.configureWhenCreated()
        } )
    }
    
    func configureWhenCreated() {
        arrAndDictCreatingActivityIndicator.stopAnimating()
        arrAndDictCreatingActivityIndicator.isHidden = true
        arrayLabel.isHidden = false
        dictionaryLabel.isHidden = false
        dictionaryManipulationOptionsCollectionView.isHidden = false
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let operation = dictionaryOperations.operationAtIndex(indexPath.row)
        dictionaryOperations.perform(operation: operation, launchedComputing: { self.dictionaryManipulationOptionsCollectionView.reloadData() }, completion: { self.dictionaryManipulationOptionsCollectionView.reloadData() })
    }
}

extension DictionaryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dictionaryOperations.operationsCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: dictionaryCellIdentifier, for: indexPath) as! DictionaryOptionsCollectionViewCell
        let operation = dictionaryOperations.operationAtIndex(indexPath.row)
        cell.backgroundColor = UIColor.lightGray
        cell.configure(withOperation: operation)
        return cell
    }
}
