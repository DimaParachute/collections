//
//  CollectionViewController.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 24.11.2021.
//
//  !! Add UI changing in array manipulation options, time, move functions to another thread !!
import UIKit

class ArrayViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //MARK:- Creating class instances
    var arrayManipulator = ArrayManipulator()
    
    //MARK:- IBOutlets
    @IBOutlet weak var arrayCreationButton: UIButton!
    @IBOutlet weak var arrayManipulationOptionsCollection: UICollectionView!
    @IBOutlet weak var arrayCreatingActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var executionTimeLabel: UILabel!
    
    //MARK:- Default values
    let cellIdentifier = "optionCell"
    let cellLabels = ["Insert 1000 elements at the beginning of the array one-by-one.", "Insert 1000 elements at the beginning of the array.", "Insert 1000 elements in the middle of the array one-by-one.", "Insert 1000 elements in the middle of the array.", "Insert 1000 elements at the end of the array one-by-one.", "Insert 1000 elements at the end of the array all at once.", "Remove 1000 elements at the end of the array one-by-one.", "Remove 1000 elements at the end of the array.", "Remove 1000 elements at the beginning of the array one-by-one.", "Remove 1000 elements at the beginning of the array.", "Remove 1000 elements in the middle of the array one-by-one.", "Remove 1000 elements in the middle of the array."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arrayManipulationOptionsCollection.delegate = self
        self.arrayManipulationOptionsCollection.dataSource = self
        arrayCreatingActivityIndicator.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        executionTimeLabel.isHidden = true
        arrayCreationButton.isHidden = false
        arrayManipulationOptionsCollection.isHidden = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellLabels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ArrayOptionsCollectionViewCell
        cell.backgroundColor = UIColor.lightGray
        cell.cellLabel.text = cellLabels[indexPath.row]
        cell.cellActivityIndicator.isHidden = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ArrayOptionsCollectionViewCell
        if indexPath.row == 0 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.insertAtTheBeginningOneByOne()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 1 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.insertAtTheBeginningAtOnce()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 2 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.insertInTheMiddleOneByOne()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 3 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.insertInTheMiddleAtOnce()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 4 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.appendToTheEndOneByOne()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 5 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.appendToTheEndAtOnce()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 6 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.removeAtTheBeginningOneByOne()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 7 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.removeAtTheBeginningAtOnce()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 8 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.removeInTheMiddleOneByOne()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 9 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.removeInTheMiddleAtOnce()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 10 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.removeAtTheEndOneByOne()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
        if indexPath.row == 11 {
            cell.cellLabel.isHidden = true
            cell.cellActivityIndicator.isHidden = false
            cell.cellActivityIndicator.startAnimating()
            DispatchQueue.global().async {
                let start = DispatchTime.now()
                self.arrayManipulator.removeAtTheEndAtOnce()
                let end = DispatchTime.now()
                let time = Double((end.rawValue - start.rawValue)) / 1000000000
                DispatchQueue.main.async {
                    cell.cellLabel.isHidden = false
                    cell.cellActivityIndicator.stopAnimating()
                    cell.cellActivityIndicator.isHidden = true
                    cell.cellLabel.text = "time: \(String(time)) ms."
                }
            }
        }
    }
    
    @IBAction func createArrayButtonPressed(_ sender: Any) {
        self.arrayCreationButton.isHidden = true
        self.arrayCreatingActivityIndicator.isHidden = false
        self.arrayCreatingActivityIndicator.startAnimating()
        DispatchQueue.global().async {
            print("Button was touched!")
            let start = DispatchTime.now()
            self.arrayManipulator.arrayCreating()
            let end = DispatchTime.now()
            let time = Double((end.rawValue - start.rawValue)) / 1000000000
            DispatchQueue.main.async {
                self.executionTimeLabel.text = "Array creation time: \(String(time)) ms."
                self.arrayCreatingActivityIndicator.stopAnimating()
                self.arrayCreatingActivityIndicator.isHidden = true
                self.executionTimeLabel.isHidden = false
                self.arrayManipulationOptionsCollection.isHidden = false
            }
            print("Array was created in", time, "ms.")
        }
    }
}
