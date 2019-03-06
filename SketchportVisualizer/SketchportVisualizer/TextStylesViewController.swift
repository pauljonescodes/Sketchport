//
//  TextStylesViewController.swift
//  SketchExportVisualizer
//
//  Created by Paul Jones on 3/5/19.
//  Copyright © 2019 Paul Jones. All rights reserved.
//

import UIKit

class TextStylesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
}

extension TextStylesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TextStyle.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextStyleCell")!
        let textStyle = TextStyle.allCases[indexPath.row]
        cell.textLabel?.attributedText = textStyle.attributedString(string: textStyle.rawValue)
        return cell
    }
    
}
