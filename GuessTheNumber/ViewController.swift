//
//  ViewController.swift
//  GuessTheNumber
//
//  Created by Artem on 12/10/24.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var userNumberUITextView: UITextField!
    @IBOutlet private weak var checkNumberUIButton: UIButton!
    @IBOutlet private weak var resultUILabel: UILabel!
    
    var randomNumber = Int.random(in: 1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkNumberUIButton.layer.cornerRadius = 10
        print(randomNumber)
    }

    @IBAction func didTapResultButton(_ sender: UIButton) {
        let userNumber = userNumberUITextView.text ?? ""
        
        if String(randomNumber) == userNumber {
            resultUILabel.text = "Вы угадали число"
        } else if userNumber < String(randomNumber) {
            resultUILabel.text = "Ваше число меньше, чем загадал компьютер"
        } else if userNumber > String(randomNumber){
            resultUILabel.text = "Ваше число больше, чем загадал компьютер"
        }
    }

}

