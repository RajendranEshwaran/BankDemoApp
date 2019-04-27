//
//  HomeViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 4/27/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITabBarDelegate,UITabBarControllerDelegate {

    
    @IBOutlet weak var item1: UITabBarItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let fundTransfter = HomeViewController()
//        fundTransfter.title = "Fund Transfer"
//        fundTransfter.view.backgroundColor = UIColor.green
        
        // Do any additional setup after loading the view.
    }
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if(item.tag == 0)
        {
            print("rajay 0")
            let FundView = self.storyboard?.instantiateViewController(withIdentifier: "FundTransferViewController") as! FundTransferViewController
            self.navigationController?.pushViewController(FundView, animated: true)
        }
        if(item.tag == 1)
        {
            print("rajay 1")
            let RechargeView = self.storyboard?.instantiateViewController(withIdentifier: "RechargeViewController") as! RechargeViewController
            self.navigationController?.pushViewController(RechargeView, animated: true)
        }
        if(item.tag == 2)
        {
            print("rajay 2")
        }
        if(item.tag == 3)
        {
            print("rajay 3")
        }
        if(item.tag == 4)
        {
            print("rajay 4")
        }
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
