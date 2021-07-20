//
//  ViewController.swift
//  Motivation Quote App
//
//  Created by Kailee Pedersen on 7/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set background color
        self.view.backgroundColor = UIColor(red: 0.4, green: 0.3765, blue: 0.8745, alpha: 1.0) /* #6660df */
        
        //quote label
        
        quoteLabel = UILabel(frame: CGRect(x: 0, y: 100, width: self.view.frame.width * 0.9, height: 150))
        quoteLabel.center.x = view.center.x
        quoteLabel.textAlignment = .center
        quoteLabel.contentMode = .scaleToFill
        quoteLabel.numberOfLines = 0
        quoteLabel.text = "Motivational Quote Generator"
        quoteLabel.textColor = UIColor.white
        self.view.addSubview(quoteLabel)
        
        //inspiration button
        let inspirationButton = UIButton(frame: CGRect(x: 100, y: 300, width: self.view.frame.width * 0.9, height: 50))
        inspirationButton.backgroundColor = UIColor(red: 0.4627, green: 0.8078, blue: 0.9922, alpha: 1.0) /* #76cefd */
        inspirationButton.setTitle("Inspiration", for: .normal)
        inspirationButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        inspirationButton.center.x = view.center.x
        inspirationButton.tag = 1
        inspirationButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        self.view.addSubview(inspirationButton)
        
        //motivation button
        let motivationButton = UIButton(frame: CGRect(x: 100, y: 360, width: self.view.frame.width * 0.9, height: 50))
        motivationButton.backgroundColor = UIColor(red: 0.9804, green: 0.8235, blue: 0, alpha: 1.0) /* #fad200 */
        motivationButton.setTitle("Motivation", for: .normal)
        motivationButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        motivationButton.center.x = view.center.x
        motivationButton.tag = 2
        motivationButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        self.view.addSubview(motivationButton)
        
        //life button
        let lifeButton = UIButton(frame: CGRect(x: 100, y: 420, width: self.view.frame.width * 0.9, height: 50))
        lifeButton.backgroundColor = UIColor(red: 0.9725, green: 0.6235, blue: 0, alpha: 1.0) /* #f89f00 */
        lifeButton.setTitle("Life", for: .normal)
        lifeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        lifeButton.center.x = view.center.x
        lifeButton.tag = 3
        lifeButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        self.view.addSubview(lifeButton)
        
        //friendship button
        let friendshipButton = UIButton(frame: CGRect(x: 100, y: 480, width: self.view.frame.width * 0.9, height: 50))
        friendshipButton.backgroundColor = UIColor(red: 0.3255, green: 0.8078, blue: 0.3608, alpha: 1.0) /* #53ce5c */
        friendshipButton.setTitle("Friendship", for: .normal)
        friendshipButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        friendshipButton.center.x = view.center.x
        friendshipButton.tag = 4
        friendshipButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        self.view.addSubview(friendshipButton)
    }
    
    //function to determine which button was tapped and generate appropriate quote based on category
    @objc func buttonTapped(_ sender: UIButton) {
        switch sender.tag {
            case 1:
                let inspoArr = ["A challenge only becomes an obstacle when you bow to it.", "Art builds upon art, builds upon art...nothing is purely original. We're all inspired by something...or someone. It's a never-ending chain of ideas...and it's magical.", "The opposite of interpersonal trust is not mistrust. It is despair. This is because we have given up on believing that trustworthiness and fulfillment are possible from others. We have lost our hope in our fellow humans.", "Let your light shine so bright that your brilliance can only be ignored by fools."]
                quoteLabel.text = inspoArr.randomElement()
                break
            case 2:
                let motivArr = ["Your failures should motivate you to look at your life goals from a different angle", "What you do you become.", "It is ironic how those so hungry for an honest opinion are so quickly offended by that honesty. If you are not ready to hear the bad with the good, do not ask.", "Many people become prosperous only to realize the illusion that Success is more Fulfillment than Achievement."]
                quoteLabel.text = motivArr.randomElement()
                break
            case 3:
                let lifeArr = ["Do every act of your life as though it were the very last act of your life.", "Do not let your difficulties fill you with anxiety, after all it is only in the darkest nights that stars shine more brightly.", "I live in my own little world. But its ok, they know me here.", "She had been given a wonderful gift: life. Sometimes it was cruelly taken away too soon, but it's what you did with it that counted, not how long it lasted."]
                quoteLabel.text = lifeArr.randomElement()
                break
            case 4:
                let friendshipArr = ["I understand you, and I shall not attempt to make you change your mind. I am too old to want to improve the world. I have told you what I think, and that is all. I shall remain your friend even if you act contrary to my convictions, and I shall help you even if I disagree with you.", "It was one thing to be fooled, and another thing to be taken for a fool all the time.", "Friendship is like a glass ornament, once it is broken it can rarely be put back together exactly the same way.", "Sometimes it's best not to examine someone's intentions, and just take them for the asshole they really are."]
                quoteLabel.text = friendshipArr.randomElement()
            default: print("unknown category selected")
        }
    }
}
