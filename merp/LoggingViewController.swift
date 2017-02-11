//
//  LoggingViewController.swift
//  Money Log
//
//  Created by Gianne Flores on 2/4/17.
//  Copyright © 2017 Gianne Flores. All rights reserved.
//

import UIKit

class LoggingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var loggingTime: UINavigationBar!
    @IBOutlet weak var Notes: UITextField!    
    @IBOutlet weak var Amount: UITextField!
    
    @IBOutlet weak var moneyCategories: UIPickerView!
    
     var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.moneyCategories.delegate = self
        pickerData = ["Groceries", "Gas", "Restaurants", "Clothes", "Makeup", "Entertainment"]
        
    }

    //MARK: - Delegates and data sources
    //MARK: Data Sources
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //MARK: Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

}
