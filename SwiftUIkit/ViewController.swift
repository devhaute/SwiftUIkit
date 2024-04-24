//
//  ViewController.swift
//  SwiftUIkit
//
//  Created by kai on 4/24/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cofigureTitleLabel()
        cofigureMyImageView()
        cofigureMyButton()
    }
    
    private func cofigureTitleLabel() {
        titlelabel.text = "hello world"
        titlelabel.textColor = .purple
        titlelabel.font = .italicSystemFont(ofSize: 25)
        titlelabel.sizeToFit()
    }
    
    private func cofigureMyImageView() {
        myImageView.image = UIImage(named: "myImage")
        myImageView.contentMode = .scaleAspectFit
    }
    
    private func cofigureMyButton() {
        myButton.setTitle("내 버튼", for: .normal)
        myButton.isEnabled = false
        myButton.setTitle("내 버튼 클릭!", for: .disabled)
    }
    
    @IBAction func didTabCloseButton(_ sender: UIButton) {
        titlelabel.text = "헬로 월드"
        print("didTapButton")
    }
}

