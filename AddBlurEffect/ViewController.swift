//
//  ViewController.swift
//  AddBlurEffect
//
//  Created by Puzhi Li on 15/2/2.
//  Copyright (c) 2015年 Puzhi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadingCons: NSLayoutConstraint!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let blurEffect = UIBlurEffect(style: .Light)
//        let blurView = UIVisualEffectView(effect: blurEffect)
//        view.addSubview(blurView)
    }
    
    override func viewWillAppear(animated: Bool) {
        leadingCons.constant = 0
        UIView.animateWithDuration(5.0, animations: { () -> Void in
            self.leadingCons.constant = 200
            self.imageView.layoutIfNeeded()
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

