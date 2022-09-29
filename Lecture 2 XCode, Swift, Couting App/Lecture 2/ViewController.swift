//
//  ViewController.swift
//  Lecture 2
//
//  Created by Sylvia Yang on 9/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    var countNum = 0
    var goal = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count.text = String(countNum)
    }
    
    @IBOutlet weak var count: UILabel!
    
    @IBAction func increment(_ sender: Any) {
        countNum += 1
        count.text = String(countNum)
        hitGoal()
    }

    @IBAction func decrement(_ sender: Any) {
        countNum -= 1
        count.text = String(countNum)
        hitGoal()
    }

    func hitGoal() {
        if countNum == goal {
            count.text = "Goal"
        }
    }


}

