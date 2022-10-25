//
//  ViewController.swift
//  Lifetime
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

    @IBOutlet weak var todayLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var yearsLabel: UILabel!
    
    @IBOutlet weak var monthsLabel: UILabel!
    
    @IBOutlet weak var daysLabel: UILabel!
    
    @IBOutlet weak var hoursLabel: UILabel!
    
    @IBOutlet weak var minutesLabel: UILabel!
    
    @IBOutlet weak var secondsLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    private var birthday = Date()
    private var lifetime = DateInterval()
    private var minutes = 0.0
    private var hours = 0.0
    private var days = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todayLabel.text = Date.now.formatted(ruTime)
        datePicker.maximumDate = Date()
    }
    
    
    @IBAction func pickBirthday(_ sender: UIDatePicker) {
        birthday = sender.date
        lifetime.start = birthday
        lifetime.end = Date()
        minutes = lifetime.duration / 60
        hours = minutes / 60
        days = hours / 24
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        birthdayLabel.text = birthday.formatted(ruTime)
        secondsLabel.text = Int(lifetime.duration).formatted()
        minutesLabel.text = minutes.formatted()
        hoursLabel.text = hours.formatted()
        daysLabel.text = days.formatted()
        // есть ошибки в расчетах
    }
    
}

