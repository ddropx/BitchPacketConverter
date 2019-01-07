//
//  ViewController.swift
//  BitchPacketConverter
//
//  Created by a.d.chernyshev on 23.08.2018.
//  Copyright © 2018 a.d.chernyshev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var countingTextField: UITextField!
    @IBOutlet weak var countTextLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    let currencyPickerArray = ["Доширак", "Ролтон"]
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultCountingLabel: UILabel!
    @IBAction func resultCountingButton(_ sender: UIButton) {
        guard let countingText = countingTextField.text, !countingText.isEmpty, let count = Int(countingText) else { return }
        let doshirak = 38
        let rollton = 14
        var currencyResult = count / doshirak
        let name = "Результат - "
        let myString = String(format: NSLocalizedString("result is bitchpackets", comment: ""), locale: Locale(identifier: "ru_RU"), currencyResult)
        let result = "\(name)\(myString)"
        resultCountingLabel.text = result
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        self.imageView.image = UIImage(named: "doshirak")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyPickerArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyPickerArray[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            self.imageView.image = UIImage(named: "doshirak")
        case 1:
            self.imageView.image = UIImage(named: "rolton")
        default:
            break
        }
    }
    
}
