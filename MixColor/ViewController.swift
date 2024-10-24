//
//  ViewController.swift
//  MixColor
//
//  Created by Artem on 10/24/24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    

    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        
        updateLabels()
    }
    
    
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let color = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        colorView.backgroundColor = color
        
        updateLabels()
    }
    
    func updateLabels() {
        redValueLabel.text = String(format: "Red: %.2f", redSlider.value)
        greenValueLabel.text = String(format: "Green: %.2f", greenSlider.value)
        blueValueLabel.text = String(format: "Blue: %.2f", blueSlider.value)
    }
}

