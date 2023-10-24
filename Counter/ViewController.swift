//
//  ViewController.swift
//  Counter
//
//  Created by Людмила Ханина on 24.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidClick() {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
}

