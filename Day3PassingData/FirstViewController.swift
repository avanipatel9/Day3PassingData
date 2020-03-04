//
//  ViewController.swift
//  Day3PassingData
//
//  Created by Avani Patel on 3/3/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var lblEnterName: UILabel!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var pickerCountry: UIPickerView!
    
    var countryList = ["India", "Canada", "USA", "UK", "China", "Nepal", "Sri Lanka", "Russia", "Pakistan", "Bhutan"]
    
    var codeList = ["IN", "CA", "USA", "UK", "CH", "NP", "SL", "RU", "PAK", "BHU"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerCountry.delegate = self
        pickerCountry.dataSource = self
    }

    @IBAction func btnGoNext(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
        
        if let name = self.txtName.text
        {
            secondVC.name = name
            self.navigationController?.pushViewController(secondVC, animated: true)
            //self.present(secondVC, animated: true, completion: nil)
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return self.countryList.count
        }
        return codeList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {
            return countryList[row]
        }
        return codeList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblEnterName.text = "\(countryList[row]) - \(codeList[row])"
    }
}

