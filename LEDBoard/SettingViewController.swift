//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by daesungYOON on 2022/07/14.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
  func changedSetting(
    text: String?,
    textColor: UIColor,
    backgroundColor: UIColor
  )
}

class SettingViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var yellowButton: UIButton!
  @IBOutlet weak var purpleButton: UIButton!
  @IBOutlet weak var greenButton: UIButton!
  @IBOutlet weak var blueButton: UIButton!
  @IBOutlet weak var orangeButton: UIButton!
  @IBOutlet weak var blackButton: UIButton!
  
  weak var delegate: LEDBoardSettingDelegate? // 메모리 누수방지 weak 선언
  var ledText: String? // 
  var textColor: UIColor = .yellow
  var backgroundColor: UIColor = .black
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }
  
  // viewVC -> settingVC 선택된 데이터 유지 되도록 설정
  private func configureView() {
    if let ledText = self.ledText {
      self.textField.text = ledText
    }
    self.changeTextColor(color: self.textColor)
    self.changeBackgroundCorButton(color: self.backgroundColor)
  }
  
  @IBAction func tapTextColorButton(_ sender: UIButton) {
    if sender == self.yellowButton {
      self.changeTextColor(color: .yellow)
      self.textColor = .yellow
    } else if sender == self.purpleButton {
      self.changeTextColor(color: .purple)
      self.textColor = .purple
    } else {
      self.changeTextColor(color: .green)
      self.textColor = .green
    }
  }
  
  @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
    if sender == self.blackButton {
      self.changeBackgroundCorButton(color: .black)
      self.backgroundColor = .black
    } else if sender == self.blueButton {
      self.changeBackgroundCorButton(color: .blue)
      self.backgroundColor = .blue
    } else {
      self.changeBackgroundCorButton(color: .orange)
      self.backgroundColor = .orange
    }
  }
  
  @IBAction func tapSaveButton(_ sender: UIButton) {
    self.delegate?.changedSetting(
      text: self.textField.text,
      textColor: self.textColor,
      backgroundColor: self.backgroundColor
    )
    self.navigationController?.popViewController(animated: true)
  }
  
  private func changeTextColor(color: UIColor) {
    self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
    self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
    self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
  }
  
  private func changeBackgroundCorButton(color: UIColor) {
    self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
    self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
    self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
  }
}
