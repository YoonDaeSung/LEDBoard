//
//  ViewController.swift
//  LEDBoard
//
//  Created by YoonDaeSung on 2022/05/26.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

  @IBOutlet weak var contentsLabel: UILabel!
  
  override func viewDidLoad() {
		super.viewDidLoad()
    self.contentsLabel.textColor = .yellow
  }
  
  // segue 이용시 prepare함수로 데이터 전달
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let settingViewConroller = segue.destination as? SettingViewController {
      settingViewConroller.delegate = self
      // 현재화면의 text settingVC에 전달
      settingViewConroller.ledText = self.contentsLabel.text
      settingViewConroller.textColor = self.contentsLabel.textColor
      settingViewConroller.backgroundColor = self.view.backgroundColor ?? .black
    }
  }
  
  func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
    if let text = text {
      self.contentsLabel.text = text
    }
    self.contentsLabel.textColor = textColor
    self.view.backgroundColor = backgroundColor
  }
}

