//
//  InterfaceController2.swift
//  swiftApp Watch
//
//  Created by ZLMac on 15-4-15.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController2: WKInterfaceController {

    @IBOutlet weak var lab: WKInterfaceLabel!
    
    @IBOutlet weak var img: WKInterfaceImage!
    
    var current:Int = 0
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let data = context as? Data {
            current = data.current
        }
        
    }

    override func willActivate() {
        
        super.willActivate()
        img.setImageNamed("\(current)")
        lab.setText("第\(current)张图片")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
