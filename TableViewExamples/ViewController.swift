//
//  ViewController.swift
//  TableViewExamples
//
//  Created by Zabeehullah Qayumi on 8/17/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [
        
        "ali",
        "mano",
        "ahmad", "ali",
        "mano",
        "ahmad", "ali",
        "mano",
        "ahmad", "ali",
        "mano",
        "ahmad" ,"ali",
        "mano",
        "ahmad", "ali",
        "mano",
        "ahmad" ,",ali",
        "mano",
        "ahmad", "ali",
        "mano",
        "ahmad" ,"ali",
        "mano",
        "ahmad", "ali",
        "mano",
        "ahmad"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let selectedItem = data[indexPath.row]
        print("\(selectedItem) Item selected !")
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        
        
        let transfrom = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        
        cell.layer.transform = transfrom
        
        UIView.animate(withDuration: 2.0) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }




}

