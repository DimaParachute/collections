//
//  ViewController.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 22.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK:- Creating class instances
    //let arrayViewController = ArrayViewController()
    lazy var arrayViewController = self.storyboard?.instantiateViewController(withIdentifier: "ArrayViewController") as! ArrayViewController
    lazy var setViewController = self.storyboard?.instantiateViewController(withIdentifier: "SetViewController") as! SetViewController
    lazy var dictionaryViewController = self.storyboard?.instantiateViewController(withIdentifier: "DictionaryViewController") as! DictionaryViewController
    
    //MARK:- IBOutlets
    @IBOutlet weak var collectionTypesTableView: UITableView!
    
    //MARK:- Default values
    let collectionTypes = ["Array", "Set", "Dictionary"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionTypesTableView.delegate = self
        self.collectionTypesTableView.dataSource = self
    }
    
    //MARK:- UITableView methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collectionTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "collectiontable")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "collectiontable")
        }
        cell?.textLabel?.text = collectionTypes[indexPath.row]
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            present(arrayViewController, animated: true, completion: nil)
        }
        if indexPath.row == 1 {
            present(setViewController, animated: true, completion: nil)
        }
        if indexPath.row == 2 {
            present(dictionaryViewController, animated: true, completion: nil)
        }
        
    }
}

