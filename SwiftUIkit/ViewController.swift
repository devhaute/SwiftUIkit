//
//  ViewController.swift
//  SwiftUIkit
//
//  Created by kai on 4/24/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titlelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titlelabel.text = "헬로 월드?"
        titlelabel.textColor = .purple
    }
    @IBAction func didTabCloseButton(_ sender: UIButton) {
        titlelabel.text = "헬로 월드"
        print("didTapButton")
    }
}

