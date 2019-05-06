//
//  HomeViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 4/27/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITabBarDelegate,UITabBarControllerDelegate,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var menuRevealBtn: UIBarButtonItem!
    
    @IBOutlet weak var homeMenuBtn: UIBarButtonItem!
    @IBOutlet weak var homeCollectionMenuView: UICollectionView!
    @IBOutlet weak var item1: UITabBarItem!
    
    var lastSelectedIndexPath : IndexPath?
    
    
    
    let imgArray:[String] = ["account.png","creditcard.png","moneybag.png","loans.png","upi.png","deals.png","mutualfunds.png","demats.png","forexcard.png"]
    let labelArray:[String] = ["Accounts","CreditCard","FD/RD","Loans","UPI","Grap Deals","Mutual Funds","Demat","Forex Cards"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let fundTransfter = HomeViewController()
//        fundTransfter.title = "Fund Transfer"
//        fundTransfter.view.backgroundColor = UIColor.green
        
        // Do any additional setup after loading the view.
        revealMenu()
      
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
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        collectionView.deselectItem(at: indexPath as IndexPath, animated: false)
         print(indexPath.item)
        
        if(indexPath.item == 0)
        {
        let FundView = self.storyboard?.instantiateViewController(withIdentifier: "AccountViewController") as! AccountViewController
        self.present(FundView, animated: false, completion: nil);
        }
        if(indexPath.item == 1)
        {
            let FundView = self.storyboard?.instantiateViewController(withIdentifier: "CreditCardViewController") as! CreditCardViewController
            self.present(FundView, animated: false, completion: nil);
        }
        if(indexPath.item == 2)
        {
            let FundView = self.storyboard?.instantiateViewController(withIdentifier: "DepositViewController") as! DepositViewController
            self.present(FundView, animated: false, completion: nil);
        }
    }
    
    

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if(item.tag == 0)
        {
           
            let FundView = self.storyboard?.instantiateViewController(withIdentifier: "FundTransferViewController") as! FundTransferViewController
            //self.navigationController?.pushViewController(FundView, animated: true,comple
            self.present(FundView, animated: false, completion: nil);
            
        }
        if(item.tag == 1)
        {
           
            let RechargeView = self.storyboard?.instantiateViewController(withIdentifier: "RechargeViewController") as! RechargeViewController
            self.present(RechargeView, animated: false, completion: nil);
        }
        if(item.tag == 2)
        {
           
            let PayView = self.storyboard?.instantiateViewController(withIdentifier: "PayBillsViewController") as! PayBillsViewController
            self.present(PayView, animated: false, completion: nil);
        }
        if(item.tag == 3)
        {
            let ServiceView = self.storyboard?.instantiateViewController(withIdentifier: "ServicesViewController") as! ServicesViewController
            self.present(ServiceView, animated: false, completion: nil);
        }
        if(item.tag == 4)
        {
            let ApplyView = self.storyboard?.instantiateViewController(withIdentifier: "ApplyNowViewController") as! ApplyNowViewController
            self.present(ApplyView, animated: false, completion: nil);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func revealMenu()
    {
        menuRevealBtn.target = revealViewController()
        self.revealViewController().rearViewRevealOverdraw = 0.0
        menuRevealBtn.action = #selector(SWRevealViewController.revealToggle(_:))
        
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
