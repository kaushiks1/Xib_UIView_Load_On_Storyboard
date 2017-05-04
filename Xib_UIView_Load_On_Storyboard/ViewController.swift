//
//  ViewController.swift
//  Xib_UIView_Load_On_Storyboard
//
//  Created by Leo on 12/17/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var xibView: UIView?







    override func viewDidLoad() {
        super.viewDidLoad()

        print("usa")

        xibView = ViewTemp.instanceFromNibForViewTemp()
        xibView?.frame = CGRect(x: 0, y: 0, width: 300, height: 500)
        xibView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(xibView!)


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonActionRemoveView(_ sender: AnyObject) {
        self.xibView?.removeFromSuperview()

    }

}

