//
//  SideMenuViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 4/29/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var profileImgView: UIImageView!
    @IBOutlet weak var lastLoginLabel: UILabel!
    let menusArray:[String] = ["Home","UPI","Service&Support","My Privileges","Axis Active","Apply Now","Favorite Transactions","Reward Points",
    "Settings", "Logout"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menusArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell", for: indexPath) as! SideMenuTableViewCell
        
        cell.menuLabel.text = menusArray[indexPath.row]
        
        return cell
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
