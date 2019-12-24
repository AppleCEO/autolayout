//
//  ViewController.swift
//  ExpandCellAtLabel
//
//  Created by joon-ho kil on 2019/12/24.
//  Copyright © 2019 joon-ho kil. All rights reserved.
//

import UIKit

class ExpandCell: UITableViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
    
}

class ViewController: UIViewController {
    struct ExpandDataModel {
        var description: String
        var isExpand: Bool
    }
    
    var dataModels = [ExpandDataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let textArray = ["short Text", "long long long,long long long,long long long,long long long,long long longlong long long,long long long,long long long,long long long,long long long",
            "short Text","short Text",
            "long long long,long long long,long long long,long long long,long long longlong long long,long long long,long long long,long long long,long long long"]
        
        for value in textArray {
            dataModels.append(ExpandDataModel.init(description: value, isExpand: false))
        }
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandCell_ID", for: indexPath) as! ExpandCell
        
        cell.descriptionLabel.text = dataModels[indexPath.row].description
        
        cell.selectionStyle = .none

        if dataModels[indexPath.row].isExpand == true {
            cell.descriptionLabel.numberOfLines = 0
            
            return cell
        }
        
        cell.descriptionLabel.numberOfLines = 1
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataModels[indexPath.row].isExpand.toggle()
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
