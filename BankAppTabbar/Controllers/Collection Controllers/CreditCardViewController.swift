//
//  CreditCardViewController.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 5/6/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class CreditCardViewController: UIViewController {

    @IBOutlet weak var card4ImgView: UIImageView!
    @IBOutlet weak var card3ImgView: UIImageView!
    @IBOutlet weak var card1ImgView: UIImageView!
    @IBOutlet weak var card2ImgView: UIImageView!
    
    var imageViews:[UIImageView] = []
    var selectedItem:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let tapGest = UITapGestureRecognizer.init(target: self, action: #selector(self.imageTapped(_:)))
        
        let tapGest2 = UITapGestureRecognizer.init(target: self, action: #selector(self.imageTapped(_:)))
        
        let tapGest3 = UITapGestureRecognizer.init(target: self, action: #selector(self.imageTapped(_:)))
        
        let tapGest4 = UITapGestureRecognizer.init(target: self, action: #selector(self.imageTapped(_:)))
        card1ImgView.addGestureRecognizer(tapGest)
        card2ImgView.addGestureRecognizer(tapGest2)
        card3ImgView.addGestureRecognizer(tapGest3)
        card4ImgView.addGestureRecognizer(tapGest4)
        
////        imageViews.append(card1ImgView)
////        imageViews.append(card2ImgView)
////        imageViews.append(card3ImgView)
////        imageViews.append(card4ImgView)
//
//
//        for imageview in imageViews {
//            imageview.addGestureRecognizer(tapGest)
//        }
        
        // Do any additional setup after loading the view.
    }

    @objc func imageTapped(_ sender:AnyObject)
    {
        print(sender.view.tag)
        
        
        if sender.view.tag == selectedItem{
            // no effect
            return
        }
        else if sender.view.tag == 1{
            card1ImgView.image = UIImage (named: "checkbox2.png")
            card2ImgView.image = UIImage (named: "checkbox1.png")
            card3ImgView.image = UIImage (named: "checkbox1.png")
            card4ImgView.image = UIImage (named: "checkbox1.png")
        }else if sender.view.tag == 2{
            card2ImgView.image = UIImage (named: "checkbox2.png")
            card1ImgView.image = UIImage (named: "checkbox1.png")
            card3ImgView.image = UIImage (named: "checkbox1.png")
            card4ImgView.image = UIImage (named: "checkbox1.png")
        }
        else if sender.view.tag == 3{
            card3ImgView.image = UIImage (named: "checkbox2.png")
            card1ImgView.image = UIImage (named: "checkbox1.png")
            card2ImgView.image = UIImage (named: "checkbox1.png")
            card4ImgView.image = UIImage (named: "checkbox1.png")
        }
        else if sender.view.tag == 4{
            card4ImgView.image = UIImage (named: "checkbox2.png")
            card2ImgView.image = UIImage (named: "checkbox1.png")
            card2ImgView.image = UIImage (named: "checkbox1.png")
            card3ImgView.image = UIImage (named: "checkbox1.png")
        }
        
        selectedItem = sender.view.tag
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
