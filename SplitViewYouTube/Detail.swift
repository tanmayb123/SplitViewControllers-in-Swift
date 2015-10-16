//
//  Detail.swift
//  SplitViewYouTube
//
//  Created by Tanmay Bakshi on 2015-10-09.
//  Copyright © 2015 Tanmay Bakshi. All rights reserved.
//

import UIKit

var currList = List()

class Detail: UIViewController {

    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    
    override func viewDidLoad() {
        currDetail = self
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(self.view.frame.size.width)
    }
    
}
