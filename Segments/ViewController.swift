//
//  ViewController.swift
//  Segments
//
//  Created by Chandrakant Shingala on 16/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffActivityIndicatorSwitch: UISwitch!
    @IBOutlet weak var colorSegment: UISegmentedControl!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var quantityLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    private func configureOnOffActivitySwitch(){
        onOffActivityIndicatorSwitch.onTintColor = .blue
        onOffActivityIndicatorSwitch.thumbTintColor = .white
        onOffActivityIndicatorSwitch.isOn = true
    }
    
    private func configureColorSegment(){
        colorSegment.selectedSegmentIndex = 1
        colorSegment.selectedSegmentTintColor = .white
        colorSegment.backgroundColor = .magenta
    }
    
    private func configurePriceSlider(){
        priceSlider.thumbTintColor = .magenta
        priceSlider.tintColor = .black
        priceSlider.minimumValue = 0
        priceSlider.maximumValue = 100
    }
    
    private func configureStepper(){
        quantityLabel.text = "No of steps: \(stepper.value)"
        stepper.value = 1000
        stepper.stepValue = 1
        stepper.minimumValue = 0
        stepper.maximumValue = 1000
    }
    
    @IBAction func onOffActivityIndicatorSwitchTapped(_ sender: UISwitch){
        sender.isOn ? activityIndicatorView.startAnimating() : activityIndicatorView.stopAnimating()
    }
    
    @IBAction func colorSegmentTapped(_ sender: UISegmentedControl){
        switch colorSegment.selectedSegmentIndex {
        case 0:
            view.backgroundColor = .blue
            activityIndicatorView.stopAnimating()
            onOffActivityIndicatorSwitch.isOn = false
        case 1:
            view.backgroundColor = .magenta
            activityIndicatorView.startAnimating()
            onOffActivityIndicatorSwitch.isOn = true
        default:
            view.backgroundColor = .black
        }
    }
    @IBAction func stepperTapped(_ sender: UIStepper){
        quantityLabel.text = "No of steps: \(stepper.value)"
    }
    
    @IBAction func sliderValueTapped(_ sender: UISlider){
        quantityLabel.text = "price: $\(priceSlider.value)"
    }
    
}

