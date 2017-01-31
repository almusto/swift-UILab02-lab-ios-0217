//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var paintBucket: UIImageView!
  @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
  @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    // TODO: Setup the IBOutlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        // TODO: Implement this function according to the instructions.
        let string1 = firstColorSegmentedControl.titleForSegment(at: firstColorSegmentedControl.selectedSegmentIndex)
      print(string1!)
        let string2 = secondColorSegmentedControl.titleForSegment(at: secondColorSegmentedControl.selectedSegmentIndex)
      print(string2!)
      paintBucket.backgroundColor = mixColors(first: string1!, second: string2!)


    }

}
