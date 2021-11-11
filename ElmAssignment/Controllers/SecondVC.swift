//
//  SecondVC.swift
//  ElmAssignment
//
//  Created by Mobark Alseif on 04/04/1443 AH.
//

import UIKit

class SecondVC: UIViewController,UITextFieldDelegate {
    
    let datePicker = UIDatePicker()
    let toolBar = UIToolbar()
    
    // MARK: - Outlet
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var textFiled: UITextField!
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        dismissPickerView()
    }
    
    // MARK: - Create Date Picker
    func createDatePicker() {
        textFiled.delegate = self
        textFiled.inputView = datePicker
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .time
    }
    
    // MARK: - dismiss Date Picker
    func dismissPickerView() {
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        textFiled.inputAccessoryView = toolBar
    }
    @objc func action() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        time.text = dateFormatter.string(from: datePicker.date)
        dateFormatter.timeStyle = .short
        textFiled.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
}
