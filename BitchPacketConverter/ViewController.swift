//
//  ViewController.swift
//  BitchPacketConverter
//
//  Created by a.d.chernyshev on 23.08.2018.
//  Copyright © 2018 a.d.chernyshev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countingTextField: UITextField!
    @IBOutlet weak var countTextLabel: UILabel!
    @IBOutlet weak var resultCountingLabel: UILabel!
    @IBAction func resultCountingButton(_ sender: UIButton) {
        guard let countingText = countingTextField.text, !countingText.isEmpty, let count = Int(countingText) else { return }
        let bitchCurrency = 38
        var currencyResult = count * bitchCurrency
        var printCurrencyResult = "Результат - \(currencyResult)"
        resultCountingLabel.text = printCurrencyResult
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
