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
    @IBOutlet weak var dictionaryManipulationOptionsCollection: UICollectionView!
    @IBOutlet weak var dictionaryLabel: UILabel!
    
    //MARK:- Default values
    let dictionaryCellIdentifier = "dictionaryOptionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayLabel.isHidden = true
        dictionaryLabel.isHidden = true
        self.dictionaryManipulationOptionsCollection.delegate = self
        self.dictionaryManipulationOptionsCollection.dataSource = self
        dictionaryManipulationOptionsCollection.isHidden = true
        arrAndDictCreatingActivityIndicator.startAnimating()
        dictionaryOperations.createArray()
        dictionaryOperations.createDictionary(completion: { [weak self] output in
            self?.configureWhenCreated()
        } )
    }
    
    func configureWhenCreated() -> Void {
        self.arrAndDictCreatingActivityIndicator.stopAnimating()
        self.arrAndDictCreatingActivityIndicator.isHidden = true
        self.arrayLabel.isHidden = false
        self.dictionaryLabel.isHidden = false
        self.dictionaryManipulationOptionsCollection.isHidden = false
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let operation = dictionaryOperations.operationAtIndex(indexPath.row)
        dictionaryOperations.perform(operation: operation, launchedComputing: { self.dictionaryManipulationOptionsCollection.reloadData() }, completion: { self.dictionaryManipulationOptionsCollection.reloadData() })
    }
}

extension DictionaryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dictionaryOperations.operationsCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: dictionaryCellIdentifier, for: indexPath) as! DictionaryOptionsCollectionViewCell
        let operation = dictionaryOperations.operationAtIndex(indexPath.row)
        cell.backgroundColor = UIColor.lightGray
        cell.configure(withOperation: operation)
        return cell
    }
}
