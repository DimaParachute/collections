//
//  CollectionViewController.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 24.11.2021.
//
import UIKit

class ArrayViewController: UIViewController {
    
    //MARK:- Creating class instances
    let arrayOperations = ArrayOperations()
    
    //MARK:- IBOutlets
    @IBOutlet weak var arrayCreationButton: UIButton!
    @IBOutlet weak var arrayManipulationOptionsCollection: UICollectionView!
    @IBOutlet weak var arrayCreatingActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var executionTimeLabel: UILabel!
    
    //MARK:- Default values
    let cellIdentifier = "optionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayCreationButton.isHidden = false
        arrayCreatingActivityIndicator.isHidden = true
        executionTimeLabel.isHidden = true
        arrayManipulationOptionsCollection.isHidden = true
    }
    
    @IBAction func createArrayButtonPressed(_ sender: Any) {
        self.arrayCreationButton.isHidden = true
        self.arrayCreatingActivityIndicator.isHidden = false
        self.arrayCreatingActivityIndicator.startAnimating()
        arrayOperations.create(completion: { [weak self] output in
            self?.configureWhenArrayCreated(withOutput: output)
        } )
    }
    
    func configureWhenArrayCreated(withOutput output: String?) -> Void {
        self.arrayCreatingActivityIndicator.stopAnimating()
        self.arrayCreatingActivityIndicator.isHidden = true
        self.executionTimeLabel.isHidden = false
        self.executionTimeLabel.text = "Array creation " + (output ?? "")
        self.arrayManipulationOptionsCollection.isHidden = false
    }
}

extension ArrayViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOperations.operationsCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ArrayOptionsCollectionViewCell
        let operation = arrayOperations.operationAtIndex(indexPath.row)
        cell.backgroundColor = UIColor.lightGray
        cell.configure(withOperation: operation)
        return cell
    }
}

extension ArrayViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let operation = arrayOperations.operationAtIndex(indexPath.row)
        arrayOperations.perform(operation: operation,
                                launchedComputing: {
            self.arrayManipulationOptionsCollection.reloadData()
        },
                                completion: {
            self.arrayManipulationOptionsCollection.reloadData()
        })
    }
}
