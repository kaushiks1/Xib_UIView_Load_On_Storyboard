//
//  ViewTemp.swift
//  Xib_UIView_Load_On_Storyboard
//
//  Created by Leo on 12/17/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class ViewTemp: UIView {

    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */

    class func instanceFromNibForViewTemp() -> UIView {
        return UINib(nibName: "ViewTemp", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }


    private func nibSetup() {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myView.backgroundColor = UIColor.blue
        self.addSubview(myView)
    }


    @IBAction func buttonActionClickHere(_ sender: AnyObject) {
        print("usa")

    }



}
