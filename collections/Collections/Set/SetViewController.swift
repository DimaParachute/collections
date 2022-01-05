//
//  SetViewController.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 25.11.2021.
//

import UIKit

class SetViewController: UIViewController, UITextFieldDelegate {
    
    //MARK:- Creating class instances
    var setManipulator = SetManipulator()
    
    //MARK:- IBOutlets
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var matchingLettersLabel: UILabel!
    @IBOutlet weak var notMatchingLettersLabel: UILabel!
    @IBOutlet weak var uniqueCharactersLabel: UILabel!
    @IBOutlet weak var uniqueCharactersButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField.delegate = self
        secondTextField.delegate = self
        uniqueCharactersButton.titleLabel?.adjustsFontSizeToFitWidth = true
        uniqueCharactersButton.titleLabel?.minimumScaleFactor = 0.5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        matchingLettersLabel.isHidden = true
        notMatchingLettersLabel.isHidden = true
        uniqueCharactersLabel.isHidden = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.letters
        let typedCharacterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: typedCharacterSet)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == firstTextField {
            setManipulator.firstSet = Set(textField.text!)
            print(setManipulator.firstSet)
        }
        if textField == secondTextField {
            setManipulator.secondSet = Set(textField.text!)
            print(setManipulator.secondSet)
        }
    }
    
    @IBAction func allMatchingLettersButtonPressed(_ sender: Any) {
        self.view.endEditing(true)
        matchingLettersLabel.isHidden = false
        setManipulator.matchingLetters()
        matchingLettersLabel.text = setManipulator.resultOfMatchingLetters
    }
    
    @IBAction func allNotMatchingLettersButtonPressed(_ sender: Any) {
        self.view.endEditing(true)
        notMatchingLettersLabel.isHidden = false
        setManipulator.notMatchingLetters()
        notMatchingLettersLabel.text = setManipulator.resultOfNotMatchingLetters
    }
    
    @IBAction func uniqueCharactersButtonPressed(_ sender: Any) {
        self.view.endEditing(true)
        uniqueCharactersLabel.isHidden = false
        setManipulator.notMatchingFromFirstTextField()
        uniqueCharactersLabel.text = setManipulator.resultOfNotMatchingLettersFromFirstTextField
    }
}
