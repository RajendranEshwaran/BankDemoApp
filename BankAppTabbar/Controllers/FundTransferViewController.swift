//
//  FundTransferViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 4/27/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class FundTransferViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    
    let valueArray:[String] = ["YourAccounts","Axis Bank Customer","Other Bank Customer","Mobile Payee","Transfer Using UPI"]
    @IBOutlet weak var sideMenubar: UIBarButtonItem!


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return valueArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransferCell", for: indexPath) as! TransferTableViewCell
        cell.layer.borderWidth = 2.0
        cell.layer.borderColor = tableView.backgroundColor?.cgColor
        cell.TransferTableLabel.text = valueArray[indexPath.row]
        return cell
        
    }
    
    
    @IBAction func deletePayeeFunc(_ sender: Any) {
    }
    @IBAction func addPayeeFunc(_ sender: Any) {
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
            print("welcome to transfer")
        
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sideMenu(_ sender: Any) {
        sideMenubar.target = revealViewController()
        
        sideMenubar.action = #selector(SWRevealViewController.revealToggle(_:))
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
