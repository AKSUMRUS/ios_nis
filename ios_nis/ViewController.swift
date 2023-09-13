//
//  ViewController.swift
//  ios_nis
//
//  Created by Paul Nikulshin on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonWasPressed(self)
    }
    @IBAction func buttonWasPressed(_ sender: Any) {
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        
        let button = sender as? UIButton
        button?.isEnabled = false
        
        for view in views {
            UIView.animate(withDuration: 3.5, animations: {
                view.backgroundColor = set.popFirst()
                view.layer.cornerRadius = .random(in: 0...25)
                view.frame.size = CGSize(width: .random(in: 100...250), height: .random(in: 50...150))
                view.frame.origin =
                CGPoint(x: .random(in: 10...100), y: .random(in: 10...600))
            }) { [weak self] _ in
                button?.isEnabled = true
            }
        }
    }
}

