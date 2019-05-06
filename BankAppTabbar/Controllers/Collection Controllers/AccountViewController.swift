//
//  AccountViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 5/5/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

let accountNo:[String]=["Rs,10,000,00"]
class AccountViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accountNo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountTableCells", for: indexPath) as! AccountTableViewCell
        cell.balanceLabel.text = accountNo[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let FundView = self.storyboard?.instantiateViewController(withIdentifier: "AccountHistoryViewController") as! AccountHistoryViewController
        self.present(FundView, animated: false, completion: nil);
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
