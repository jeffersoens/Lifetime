//
//  ViewController.swift
//  Days of life
//
//  Created by Вячеслав Горбатенко on 23.10.2022.
//

import UIKit

let ruTime = Date.FormatStyle()
    .year(.defaultDigits)
    .day(.twoDigits)
    .month(.twoDigits)
    .locale(Locale(identifier: "ru_RU"))

class ViewController: UIViewController {

    @IBOutlet weak var todayDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }

    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        todayDate.text = Date.now.formatted(ruTime)
    }
    
}

