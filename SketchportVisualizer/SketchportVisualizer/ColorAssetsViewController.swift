//
//  ColorAssetsViewController.swift
//  SketchExportVisualizer
//
//  Created by Paul Jones on 3/5/19.
//  Copyright © 2019 Paul Jones. All rights reserved.
//

import UIKit

class ColorAssetsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

}

extension ColorAssetsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Color.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")!
        cell.contentView.backgroundColor = Color.allCases[indexPath.row].color
        cell.textLabel?.text = Color.allCases[indexPath.row].rawValue
        cell.selectionStyle = .none
        return cell
    }
    
    
}
