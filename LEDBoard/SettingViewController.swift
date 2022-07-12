//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by daesungYOON on 2022/05/30.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {
 
	@IBOutlet weak var textField: UITextField!
  @IBOutlet weak var yellowButton: UIButton!
  @IBOutlet weak var purpleButton: UIButton!
  @IBOutlet weak var greenButton: UIButton!
  @IBOutlet weak var blackButton: UIButton!
  @IBOutlet weak var blueButton: UIButton!
  @IBOutlet weak var orangeButton: UIButton!
  
	weak var delegate: LEDBoardSettingDelegate?
	var textColor: UIColor = .yellow
	var backgroundColor: UIColor = .black
	
  override func viewDidLoad() {
        super.viewDidLoad()
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
  
  @IBAction func tapBackGroundColorButton(_ sender: UIButton) {
      if sender == self.blackButton {
				self.changeBackgroundColorButton(color: .black)
				self.backgroundColor = .black
			} else if sender == self.blueButton {
				self.changeBackgroundColorButton(color: .blue)
				self.backgroundColor = .blue
			} else {
				self.changeBackgroundColorButton(color: .orange)
				self.backgroundColor = .orange
			}
  }
  
  @IBAction func tapSaveButton(_ sender: UIButton) {
      self.delegate?.changedSetting(
        text: self.textField.text,
        textColor: self.textField.textColor!,
        backgroundColor: self.backgroundColor
      )
      self.navigationController?.popViewController(animated: true)
  }
  
  private func changeTextColor(color: UIColor) {
    self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2 // 3항연산 true : false
    self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
    self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
  }
  
  private func changeBackgroundColorButton(color: UIColor) {
    self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
    self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
    self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
  }
}
