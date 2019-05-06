//
//  AccountHistoryViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 5/5/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class AccountHistoryViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    let transArray:[String] = ["10,000,000.00"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountHistoryTableViewCell", for: indexPath) as! AccountHistoryTableViewCell
        
        cell.amountLabel.text = transArray[indexPath.row]
        return cell
    }
    
    @IBAction func viewStatementFunc(_ sender: Any) {
    }
    
    @IBAction func emailStatementFunc(_ sender: Any) {
    }
    
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
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
