//
//  LayerStylesViewController.swift
//  SketchExportVisualizer
//
//  Created by Paul Jones on 3/5/19.
//  Copyright © 2019 Paul Jones. All rights reserved.
//

import UIKit

class LayerStylesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        for cell in tableView.visibleCells {
            for layer in cell.contentView.layer.sublayers ?? [] {
                layer.frame = cell.layer.bounds
            }
        }
    }
}

extension LayerStylesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LayerStyles.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LayerStylesCell")!
        
        for layer in cell.contentView.layer.sublayers ?? [] {
            layer.removeFromSuperlayer()
        }
        
        let layerStyle = LayerStyles.allCases[indexPath.row]
        for layer in layerStyle.layers {
            cell.contentView.layer.addSublayer(layer)
            layer.frame = cell.layer.bounds
        }
        cell.textLabel?.text = layerStyle.rawValue
        
        return cell
    }
    
}
