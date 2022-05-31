//
//  ViewController.swift
//  LEDBoard
//
//  Created by YoonDaeSung on 2022/05/26.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var contentsLabel: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    self.contentsLabel.textColor = .yellow
    }
}

