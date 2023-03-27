//
//  ViewController.swift
//  RequestClousureTest3
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        requestPizza()
    }
    
    func setupTableView() {
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        let UINIB = UINib(nibName: "MyTableViewCell", bundle: nil)
        myTableView.register(UINIB, forCellReuseIdentifier: "Cell")
    }
    
    func requestPizza() {
        request.requestPizza { myRequestPizza in
            self.request.arrayPizza = myRequestPizza
            self.myTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.request.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
            cell.setupCell(myCell: self.request.arrayPizza?[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let myScreen = self.storyboard?.instantiateViewController(withIdentifier: "screenTwo") as? SecondViewController {
            myScreen.connection2 = self.request.arrayPizza?[indexPath.row]
            self.navigationController?.pushViewController(myScreen, animated: true)
        }
    }
}
