//
//  ViewController.swift
//  NotificationCenterObserverDemo
//
//  Created by Mac on 28/09/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        NotificationCenter.default.addObserver(self, selector: #selector(notificationFired(n:)) , name: NSNotification.Name("NotificationTriggered"), object: nil )
    }
    
  @objc  func notificationFired(n: Notification)  {
    self.label.text = "Notification"
        print("Notification Triggerd")
    
    }


    @IBAction func moveToSecond(_ sender: Any) {
        let svc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(svc, animated: true)
    }
}

