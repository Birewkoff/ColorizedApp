//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Артур Бирюков on 16.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlet
    @IBOutlet var colorBord: UIView!
    
    @IBOutlet var redLabelForNumbers: UILabel!
    @IBOutlet var greenLabelForNumbers: UILabel!
    @IBOutlet var blueLabelForNumbers: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorBord.layer.cornerRadius = 20.0
        
        redSetupSlider()
        greenSetupSlider()
        blueSetupSlider()
        setupNumberForLabel()
        updateColor()
    }
    
    // MARK: - IB Action
    @IBAction func redSliderAction() {
        redLabelForNumbers.text = String(format: "%.2f", redSlider.value)
        updateColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabelForNumbers.text = String(format: "%.2f", greenSlider.value)
        updateColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabelForNumbers.text = String(format: "%.2f", blueSlider.value)
        updateColor()
    }
    
    // MARK: - Privat Func
    private func setupNumberForLabel() {
        redLabelForNumbers.text = String(format: "%.2f", redSlider.value)
        greenLabelForNumbers.text = String(format: "%.2f", greenSlider.value)
        blueLabelForNumbers.text = String(format: "%.2f", blueSlider.value)
    }

    private func redSetupSlider() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
    }
    
    private func greenSetupSlider() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func blueSetupSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func updateColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        let newColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        colorBord.backgroundColor = newColor
    }
}

