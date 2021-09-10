//
//  SecondViewController.swift
//  NotificationCenterObserverDemo
//
//  Created by Mac on 28/09/2020.
//

import UIKit

class SecondViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func fireNotification(_ sender: Any) {
        
        
        
        NotificationCenter.default.post(name: NSNotification.Name("NotificationTriggered"), object: nil, userInfo: nil)
        
        self.navigationController?.popViewController(animated: true)
    }
    

}
