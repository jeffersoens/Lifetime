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
    private var lifetime: Range<Date> = Date()..<Date()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todayLabel.text = Date.now.formatted(ruTime)
        datePicker.maximumDate = Date()
        datePicker.setValue(UIColor.black, forKeyPath: "textColor")
    }
    
    override func viewDidLayoutSubviews() {
    }
    
    
    @IBAction func pickBirthday(_ sender: UIDatePicker) {
        lifetime = sender.date..<Date.now
        birthday = sender.date
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        birthdayLabel.text = birthday.formatted(ruTime)
        yearsLabel.text = lifetime.formatted(.components(style: .wide, fields: [.year]))
        monthsLabel.text = lifetime.formatted(.components(style: .wide, fields: [.month]))
        daysLabel.text = lifetime.formatted(.components(style: .wide, fields: [.day]))
        hoursLabel.text = lifetime.formatted(.components(style: .wide, fields: [.hour]))
        minutesLabel.text = lifetime.formatted(.components(style: .wide, fields: [.minute]))
        secondsLabel.text = lifetime.formatted(.components(style: .wide, fields: [.second]))
    }
}
