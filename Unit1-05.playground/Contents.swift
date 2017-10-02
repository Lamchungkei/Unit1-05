// Created by: Kay Lin
// Created on: Oct 1st 2017
// Created for: ICS3U
// This program calculates the cost of a pizza,
// give the diameter


import PlaygroundSupport
import UIKit

class ViewController : UIViewController, UITextFieldDelegate {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var diaLabel : UILabel!
    var answerLabel : UILabel!
    var textBox : UITextField!
    var calculateButton : UIButton!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //timeLabel
        diaLabel = UILabel()
        diaLabel.text = "Enter the diameter of pizza, in inches "
        view.addSubview(diaLabel)
        diaLabel.translatesAutoresizingMaskIntoConstraints = false
        diaLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        diaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //timeBox
        textBox = UITextField()
        textBox.bounds = CGRect(x: 0, y: 0, width: view.bounds.width / 2, height: 50)
        textBox.backgroundColor = UIColor.lightGray
        textBox.borderStyle = UITextBorderStyle.roundedRect
        textBox.font = UIFont.systemFont(ofSize: 17)
        textBox.textAlignment = .center
        textBox.placeholder = "insert diameter"
        textBox.clearButtonMode = UITextFieldViewMode.whileEditing
        
        textBox.delegate = self
        view.addSubview(textBox)
        textBox.translatesAutoresizingMaskIntoConstraints = false
        textBox.topAnchor.constraint(equalTo: diaLabel.bottomAnchor, constant: 20).isActive = true
        textBox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // calculate button
        calculateButton = UIButton()
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(cost), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: textBox.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // answerLabel
        answerLabel = UILabel()
        
        // answerLabel.text = "The cost is " + "$"
        
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    func cost() {
        // constants
        var diameter = Float(textBox.text!)
        let PI = Float(3.14)
        let labourCost = Float(0.75)
        let rentCost = Float(1.00)
        let materialCost = Float(0.50)
        let HST = Float(0.13)
        
        // process
        
        var sub_total = labourCost + rentCost + (materialCost * diameter!)
        
        var cost = sub_total + (sub_total * HST)
        
        answerLabel.text = "The cost is " + "$" + String(format:"%.2f", cost)
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


