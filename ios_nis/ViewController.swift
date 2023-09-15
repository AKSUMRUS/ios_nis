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
    
    func getRandomColors() -> Set<UIColor> {
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
        
        return set
    }
    
    func getRandomSize() -> CGSize {
        return CGSize(width: .random(in: 40...240), height: .random(in: 40...240))
    }
    
    func getRandomPoint() -> CGPoint {
        return CGPoint(x: .random(in: 20...200), y: .random(in: 40...600))
    }
    
    func getRandomRadius() -> CGFloat {
        return .random(in: 0...25)
    }
    
    @IBAction func buttonWasPressed(_ sender: Any) {
        var set = getRandomColors()
        
        let button = sender as? UIButton
        button?.isEnabled = false
        
        for view in views {
            UIView.animate(withDuration: 3.5, animations: {
                view.backgroundColor = set.popFirst()
                view.layer.cornerRadius = self.getRandomRadius()
                view.frame.size = self.getRandomSize()
                view.frame.origin = self.getRandomPoint()
            }) { _ in
                button?.isEnabled = true
            }
        }
    }
}

