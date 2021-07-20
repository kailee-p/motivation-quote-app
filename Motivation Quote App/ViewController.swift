//
//  ViewController.swift
//  Motivation Quote App
//
//  Created by Kailee Pedersen on 7/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set background color
        self.view.backgroundColor = UIColor(red: 0.4, green: 0.3765, blue: 0.8745, alpha: 1.0) /* #6660df */
        
        //inspiration button
        let inspirationButton = UIButton(frame: CGRect(x: 100, y: 300, width: self.view.frame.width * 0.9, height: 50))
        inspirationButton.backgroundColor = UIColor(red: 0.4627, green: 0.8078, blue: 0.9922, alpha: 1.0) /* #76cefd */
        inspirationButton.setTitle("Inspiration", for: .normal)
        inspirationButton.center.x = view.center.x
        inspirationButton.addTarget(self, action: #selector(inspirationButtonAction), for: UIControl.Event.touchUpInside)
        self.view.addSubview(inspirationButton)
        
        //motivation button
        let motivationButton = UIButton(frame: CGRect(x: 100, y: 360, width: self.view.frame.width * 0.9, height: 50))
        motivationButton.backgroundColor = UIColor(red: 0.9804, green: 0.8235, blue: 0, alpha: 1.0) /* #fad200 */
        motivationButton.setTitle("Motivation", for: .normal)
        motivationButton.center.x = view.center.x
        inspirationButton.addTarget(self, action: #selector(motivationButtonAction), for: UIControl.Event.touchUpInside)
        self.view.addSubview(motivationButton)
        
        //life button
        let lifeButton = UIButton(frame: CGRect(x: 100, y: 420, width: self.view.frame.width * 0.9, height: 50))
        lifeButton.backgroundColor = UIColor(red: 0.9725, green: 0.6235, blue: 0, alpha: 1.0) /* #f89f00 */
        lifeButton.setTitle("Life", for: .normal)
        lifeButton.center.x = view.center.x
        inspirationButton.addTarget(self, action: #selector(lifeButtonAction), for: UIControl.Event.touchUpInside)
        self.view.addSubview(lifeButton)
        
        //friendship button
        let friendshipButton = UIButton(frame: CGRect(x: 100, y: 480, width: self.view.frame.width * 0.9, height: 50))
        friendshipButton.backgroundColor = UIColor(red: 0.3255, green: 0.8078, blue: 0.3608, alpha: 1.0) /* #53ce5c */
        friendshipButton.setTitle("Friendship", for: .normal)
        friendshipButton.center.x = view.center.x
        inspirationButton.addTarget(self, action: #selector(friendshipButtonAction), for: UIControl.Event.touchUpInside)
        self.view.addSubview(friendshipButton)
    }
    
    @objc func inspirationButtonAction() {
        print("Inspo button pushed")
    }
    
    @objc func motivationButtonAction() {
        print("motiv button pushed")
    }
    
    @objc func lifeButtonAction() {
        print("life button pushed")
    }
    
    @objc func friendshipButtonAction () {
        print("friendship button pushed")
    }
}
