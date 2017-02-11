//
//  ViewController.swift
//  merp
//
//  Created by Gianne Flores on 1/29/17.
//  Copyright © 2017 Gianne Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var logTimeBut: UIButton!
    @IBOutlet var moneyLog: UILabel!
    @IBOutlet weak var cashValue: UITextField!
    @IBOutlet weak var howMoney: UILabel!
    @IBOutlet weak var Continue: UIButton!
    
    
    var moneyValue = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.logTimeBut.isHidden = false
        self.moneyLog.isHidden = false
        self.cashValue.isHidden = true
        self.Continue.isHidden = true
        cashValue.font = UIFont(name: (cashValue.font?.fontName)!, size: 25)
        self.howMoney.isHidden = true
        howMoney.font = UIFont(name: (howMoney.font?.fontName)!, size: 23)
      //  overview.setTitleVerticalPositionAdjustment(CGFloat(7), for: UIBarMetrics.default)
       // self.overview.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func logTimeBut(_ sender: UIButton) {
        self.logTimeBut.isHidden = true
        self.moneyLog.isHidden = true
        self.cashValue.isHidden = false
        self.howMoney.isHidden = false
        self.Continue.isHidden = true
        
    }
    
    @IBAction func cashValue(_ sender: Any) {
        self.Continue.isHidden = false

    }
    
    @IBAction func Continue(_ sender: Any) {
        // gets user cashValue
        moneyValue = cashValue.text!
        let wallet = NSString(string: moneyValue)
        let userCash = wallet.doubleValue
        print("You have this much money \(userCash)")
        
        
        self.logTimeBut.isHidden = true
        self.moneyLog.isHidden = true
        self.cashValue.isHidden = true
        self.howMoney.isHidden = true
        self.Continue.isHidden = true
        self.view.endEditing(true) //hides the keyboard
       
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let goToOverview : OverviewViewController = segue.destination as! OverviewViewController
        goToOverview.moneyDisplayText = cashValue.text!
        
    }


}


