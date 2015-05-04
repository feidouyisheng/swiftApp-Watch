//
//  InterfaceController.swift
//  swiftApp Watch WatchKit Extension
//
//  Created by ZLMac on 15-4-15.
//  Copyright (c) 2015年 lgwh. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var current:Int = 0
    @IBOutlet weak var imageView: WKInterfaceImage!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func goToNextController() {
        pushControllerWithName("nextVC", context:Data(current: current))
    }
    @IBAction func action(value: Float) {
        
        current = Int(value)
        onUpdate()
    }
    func onUpdate() {
        imageView.setImageNamed("\(current)")
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
}
class Data {
    let current:Int
    init(current:Int) {
        self.current = current
    }
}

