//
//  AccountHistoryViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 5/5/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class AccountHistoryViewController: UIViewController {

    @IBOutlet weak var backItem: UIBarButtonItem!
    @IBOutlet weak var titileNavBar: UINavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        dismiss(animated: false, completion: nil)
       
    }
    func goback(){
        
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
