//
//  ViewController.swift
//  APILanguages
//
//  Created by Gevorg Hovhannisyan on 10.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - JSONParser
    let parser = Parser()
    var datum = [Datum]()
    
    //MARK: - @IBOutlet TableView
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parser.parse {
            
            data in
            self.datum = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return datum.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = datum[indexPath.row].translation
        
        return cell
    }
}
