//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by daesungYOON on 2022/07/14.
//

import UIKit

class SettingViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var yellowButton: UIButton!
  @IBOutlet weak var purpleButton: UIButton!
  @IBOutlet weak var greenButton: UIButton!
  @IBOutlet weak var blueButton: UIButton!
  @IBOutlet weak var orangeButton: UIButton!
  @IBOutlet weak var blackButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func tapTextColorButton(_ sender: UIButton) {
    if sender == self.yellowButton {
      self.changeTextColor(color: .yellow)
    } else if sender == self.purpleButton {
      self.changeTextColor(color: .purple)
    } else {
      self.changeTextColor(color: .green)
    }
  }
  
  @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
    if sender == self.blackButton {
      self.changeBackgroundCorButton(color: .black)
    } else if sender == self.blueButton {
      self.changeBackgroundCorButton(color: .blue)
    } else {
      self.changeBackgroundCorButton(color: .orange)
    }
  }
  
  @IBAction func tapSaveButton(_ sender: UIButton) {
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
