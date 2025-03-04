//
//  ViewController.swift
//  Color Picker
//
//  Created by Poyraz Özzengi on 15.10.2024.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var redSwitch: UISwitch!

    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
    
        let color = UIColor(red: red, green: green,
           blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateColor()
        viewDidLoad()
    }
    
    
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        updateColor()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor =
           UIColor.black.cgColor
    }
    
    
    

    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        updateColor()

    }
    
    
    



    @IBAction func sliderChange(_ sender: Any) {
        updateColor()
    }
    
}
