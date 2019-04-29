//
//  CustomNavigation.swift
//  BankAppTabbar
//
//  Created by gomathi saminathan on 4/26/19.
//  Copyright © 2019 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class CustomNavigation: UIView {

    @IBOutlet weak var revealBtn: UIBarButtonItem!
    @IBAction func revealBtn(_ sender: Any) {
       
    }
    
   
    @IBAction func homeBtn(_ sender: Any) {
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override init(frame: CGRect) {
        super.init(frame: frame)
       // customInitialization()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInitialization()
    }
    
    func customInitialization()
    {
       
        let views = Bundle.main.loadNibNamed("CustomNavigation", owner: self, options: nil)?.first as! UIView
        self .addSubview(views)
        
//        let view = UINib(nibName: "CustomNavigation", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
//        // let view = Bundle.main.loadNibNamed("CustomView", owner: nil, options: nil)!.first as! UIView // does the same as above
//        view.frame = self.bounds
//        self .addSubview(view)
    }
}
