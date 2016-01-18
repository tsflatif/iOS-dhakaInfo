//
//  ViewController.swift
//  favorite-place
//
//  Created by Tauseef Latif on 2016-01-13.
//  Copyright © 2016 Tauseef Latif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moreBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        moreBtn.layer.cornerRadius = 2.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

