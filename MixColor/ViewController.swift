//
//  ViewController.swift
//  MixColor
//
//  Created by Artem on 11/4/24.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSliderValue: UISlider!
    @IBOutlet weak var greenSliderValue: UISlider!
    @IBOutlet weak var blueSliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        updateLabels()
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let color = UIColor(
            red: CGFloat(redSliderValue.value),
            green: CGFloat(greenSliderValue.value),
            blue: CGFloat(blueSliderValue.value),
            alpha: 1
        )
        
        colorView.backgroundColor = color
        updateLabels()
    }
    
    func updateLabels() {
        redValueLabel.text = String()
        greenValueLabel.text = String()
        blueValueLabel.text = String()
        
        redValueLabel.text = String(format: "%.2f", redSliderValue.value)
        greenValueLabel.text = String(format: "%.2f", greenSliderValue.value)
        blueValueLabel.text = String(format: "%.2f", blueSliderValue.value)
    }
}

