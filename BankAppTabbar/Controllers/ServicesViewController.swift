//
//  ServicesViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 4/27/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController  ,UICollectionViewDelegate,UICollectionViewDataSource {
   
    

    @IBOutlet weak var quickLinkView2: UIView!
    @IBOutlet weak var quickLinkView: UIView!
    
    let serviceCollecMenuArray:[String] = ["Cheques","Accounts","Debit Cards","Credit Cards","Loans","Others"];
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return serviceCollecMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServiceCollectionCell", for: indexPath) as! ServiceCollectionViewCell
        
        cell.serviceNameLabel.text = serviceCollecMenuArray[indexPath.row]
        return cell
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        quickLinkView.layer.borderWidth = 0.4
        quickLinkView2.layer.borderWidth = 0.4
        
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
