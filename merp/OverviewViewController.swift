//
//  OverviewViewController.swift
//  Money Log
//
//  Created by Gianne Flores on 2/4/17.
//  Copyright © 2017 Gianne Flores. All rights reserved.
//

import UIKit

class OverviewViewController: UIViewController {

    @IBOutlet weak var overview: UINavigationBar!
    @IBOutlet weak var yourMoneyText: UITextView!
    @IBOutlet weak var moneyDisplay: UILabel!
    @IBOutlet weak var toLogButton: UIBarButtonItem!
    
    @IBOutlet weak var temp: UIButton!
    var moneyDisplayText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moneyDisplay.text = moneyDisplayText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressLogButton(_ sender: Any) {
       
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
