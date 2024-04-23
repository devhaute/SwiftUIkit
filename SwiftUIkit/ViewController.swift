//
//  ViewController.swift
//  SwiftUIkit
//
//  Created by kai on 4/24/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cofigureTitleLabel()
        cofigureMyImageView()
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
    
    @IBAction func didTabCloseButton(_ sender: UIButton) {
        titlelabel.text = "헬로 월드"
        print("didTapButton")
    }
}

