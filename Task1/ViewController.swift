//
//  ViewController.swift
//  Task1
//
//  Created by neoviso on 8/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //colorButton.backgroundColor = .clear
        colorButton.layer.cornerRadius = 8
        colorButton.layer.borderWidth = 1
        colorButton.layer.borderColor = UIColor.blue.cgColor
    }

    @IBAction func colorButton(_ sender: UIButton) {
        colorLabel.textColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
            return UIColor(red: .random(in: 0...1),
                           green: .random(in: 0...1),
                           blue: .random(in: 0...1),
                           alpha: 1.0)
    }
    
}


