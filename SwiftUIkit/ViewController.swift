//
//  ViewController.swift
//  SwiftUIkit
//
//  Created by kai on 4/24/24.
//

import UIKit

class ViewController: UIViewController {
    var datas: [String] = ["일찬호", "이찬호", "삼찬호", "사찬호"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    @IBAction func didTabButton(_ sender: Any) {
        guard let text = nameTextField.text, !text.isEmpty else { return }
        datas.append(text)
        nameTextField.text = ""
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "tableViewCell")
        
        cell.textLabel?.text = datas[indexPath.row]
        return cell
    }
}
