//
//  DetailVC.swift
//  favorite-place
//
//  Created by Tauseef Latif on 2016-01-13.
//  Copyright © 2016 Tauseef Latif. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var historyLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        var names = [String]()
        
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
            
            if let blogs = json["blogs"] as? [[String: AnyObject]] {
                for blog in blogs {
                    if let name = blog["name"] as? String {
                        names.append(name)
                    }
                }
            }
        } catch {
            print("error serializing JSON: \(error)")
        }
        
        print(names) // ["Bloxus test", "Manila Test"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
