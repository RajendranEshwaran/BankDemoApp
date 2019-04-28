//
//  HomeViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 4/27/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITabBarDelegate,UITabBarControllerDelegate,UICollectionViewDelegate,UICollectionViewDataSource {

    
    @IBOutlet weak var homeCollectionMenuView: UICollectionView!
    @IBOutlet weak var item1: UITabBarItem!
    
    let imgArray:[String] = ["account.png","creditcard.png","moneybag.png","loans.png","upi.png","deals.png","mutualfunds.png","demats.png","forexcard.png","account.png","creditcard.png"]
    let labelArray:[String] = ["Accounts","CreditCard","FD/RD","Loans","UPI","Grap Deals","Mutual Funds","Demat","Forex Cards" ,"Accounts","Credit Card"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let fundTransfter = HomeViewController()
//        fundTransfter.title = "Fund Transfer"
//        fundTransfter.view.backgroundColor = UIColor.green
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCollectionViewCell
        
        cell.cellImageView.image = UIImage(named: imgArray[indexPath.row])
        cell.cellLabel.text = labelArray[indexPath.row]
        
        return cell
    }
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if(item.tag == 0)
        {
            print("rajay 0")
            let FundView = self.storyboard?.instantiateViewController(withIdentifier: "FundTransferViewController") as! FundTransferViewController
            //self.navigationController?.pushViewController(FundView, animated: true,comple
            self.present(FundView, animated: true, completion: nil);
        }
        if(item.tag == 1)
        {
            print("rajay 1")
            let RechargeView = self.storyboard?.instantiateViewController(withIdentifier: "RechargeViewController") as! RechargeViewController
            self.present(RechargeView, animated: true, completion: nil);
        }
        if(item.tag == 2)
        {
            print("rajay 2")
            let PayView = self.storyboard?.instantiateViewController(withIdentifier: "PayBillsViewController") as! PayBillsViewController
            self.present(PayView, animated: true, completion: nil);
        }
        if(item.tag == 3)
        {
            print("rajay 3")
            let ServiceView = self.storyboard?.instantiateViewController(withIdentifier: "ServicesViewController") as! ServicesViewController
            self.present(ServiceView, animated: true, completion: nil);
        }
        if(item.tag == 4)
        {
            print("rajay 4")
            let ApplyView = self.storyboard?.instantiateViewController(withIdentifier: "ApplyNowViewController") as! ApplyNowViewController
            self.present(ApplyView, animated: true, completion: nil);
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
