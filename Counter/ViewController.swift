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
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var counterTextView: UITextView!
    
    private var counter: Int = 0
    
    private var dateFormatter: DateFormatter {
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return df
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterTextView.text = "История изменений:\n\n"
    }

    @IBAction func buttonDidClick() {
        counter = 0
        
        let timeString = dateFormatter.string(from: Date())
        counterTextView.text += "\(timeString): значение сброшено\n\n"
        
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func minusButtonDidClick() {
        let timeString = dateFormatter.string(from: Date())
        if counter >= 1 {
            counter -= 1
            counterTextView.text += "\(timeString): значение изменено на -1\n\n"
        } else {
            counterTextView.text += "\(timeString): попытка уменьшить значение счётчика ниже 0\n\n"
        }
        
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    
    @IBAction func plusButtonDidClick() {
        counter += 1
        
        let timeString = dateFormatter.string(from: Date())
        counterTextView.text += "\(timeString): значение изменено на +1\n\n"
        
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}

