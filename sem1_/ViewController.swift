//
//  ViewController.swift
//  sem1_
//
//  Created by Paul Nikulshin on 08.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    private func configureUI() {
        let ourView = UIView()
        
        view.addSubview(ourView)
        ourView.backgroundColor = .systemPink
        ourView.translatesAutoresizingMaskIntoConstraints = false
        
        ourView.pinCenter(to: view)
        ourView.pinHeight(to: view)
        ourView.setWidth(100)
    }
}

