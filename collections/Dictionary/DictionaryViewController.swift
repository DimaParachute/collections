//
//  DictionaryViewController.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 25.11.2021.
//

import UIKit

class DictionaryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //MARK:- Creating class instances
    var dictionaryManipulator = DictionaryManipulator()
    
    //MARK:- IBOutlets
    @IBOutlet weak var arrAndDictCreatingActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var arrayLabel: UILabel!
    @IBOutlet weak var dictionaryManipulationOptionsCollection: UICollectionView!
    @IBOutlet weak var dictionaryLabel: UILabel!
    
    //MARK:- Default values
    let dictionaryCellIdentifier = "dictionaryOptionCell"
    let dictionaryCellLabels = ["Find the first contact", "Find the first contact", "Find the last contact", "Find the last contact", "Search for a non-existing element", "Search for a non-existing element"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        arrayLabel.isHidden = true
        dictionaryLabel.isHidden = true
        self.dictionaryManipulationOptionsCollection.delegate = self
        self.dictionaryManipulationOptionsCollection.dataSource = self
        dictionaryManipulationOptionsCollection.isHidden = true
        arrAndDictCreatingActivityIndicator.startAnimating()
        DispatchQueue.global().async {
            self.dictionaryManipulator.contactArrayGenerator()
            self.dictionaryManipulator.contactDictionaryGenetor()
            print("Collections are ready!")
            DispatchQueue.main.async {
                self.arrAndDictCreatingActivityIndicator.stopAnimating()
                self.arrAndDictCreatingActivityIndicator.isHidden = true
                self.arrayLabel.isHidden = false
                self.dictionaryLabel.isHidden = false
                self.dictionaryManipulationOptionsCollection.isHidden = false
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dictionaryCellLabels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: dictionaryCellIdentifier, for: indexPath) as! DictionaryOptionsCollectionViewCell
        cell.dictionaryActivityIndicator.isHidden = true
        cell.backgroundColor = UIColor.lightGray
        cell.dictionaryCellLabel.text = dictionaryCellLabels[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! DictionaryOptionsCollectionViewCell
        if indexPath.row == 0 {
            cell.dictionaryCellLabel.isHidden = true
            cell.dictionaryActivityIndicator.isHidden = false
            cell.dictionaryActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.dictionaryManipulator.findTheFirstContactArray()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.backgroundColor = UIColor.lightGray
                    cell.dictionaryCellLabel.isHidden = false
                    cell.dictionaryActivityIndicator.stopAnimating()
                    cell.dictionaryActivityIndicator.isHidden = true
                    cell.dictionaryCellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 1 {
            cell.dictionaryCellLabel.isHidden = true
            cell.dictionaryActivityIndicator.isHidden = false
            cell.dictionaryActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.dictionaryManipulator.findTheFirstContactDictionary()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.dictionaryCellLabel.isHidden = false
                    cell.dictionaryActivityIndicator.stopAnimating()
                    cell.dictionaryActivityIndicator.isHidden = true
                    cell.dictionaryCellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 2 {
            cell.dictionaryCellLabel.isHidden = true
            cell.dictionaryActivityIndicator.isHidden = false
            cell.dictionaryActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.dictionaryManipulator.findTheLastContactArray()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.dictionaryCellLabel.isHidden = false
                    cell.dictionaryActivityIndicator.stopAnimating()
                    cell.dictionaryActivityIndicator.isHidden = true
                    cell.dictionaryCellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 3 {
            cell.dictionaryCellLabel.isHidden = true
            cell.dictionaryActivityIndicator.isHidden = false
            cell.dictionaryActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.dictionaryManipulator.findTheLastContactDictionary()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.dictionaryCellLabel.isHidden = false
                    cell.dictionaryActivityIndicator.stopAnimating()
                    cell.dictionaryActivityIndicator.isHidden = true
                    cell.dictionaryCellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 4 {
            cell.dictionaryCellLabel.isHidden = true
            cell.dictionaryActivityIndicator.isHidden = false
            cell.dictionaryActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.dictionaryManipulator.searchForANonExistingElementArray()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.dictionaryCellLabel.isHidden = false
                    cell.dictionaryActivityIndicator.stopAnimating()
                    cell.dictionaryActivityIndicator.isHidden = true
                    cell.dictionaryCellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 5 {
            cell.dictionaryCellLabel.isHidden = true
            cell.dictionaryActivityIndicator.isHidden = false
            cell.dictionaryActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.dictionaryManipulator.searchForANonExistingElementDictionary()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.dictionaryCellLabel.isHidden = false
                    cell.dictionaryActivityIndicator.stopAnimating()
                    cell.dictionaryActivityIndicator.isHidden = true
                    cell.dictionaryCellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
    }
}
