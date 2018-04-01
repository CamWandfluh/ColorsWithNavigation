//
//  ColorsViewController.swift
//  Colors
//
//  Created by Cameron Wandfluh on 3/15/18.
//  Copyright © 2018 Cameron Wandfluh. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var colorTableView: UITableView!
    
    var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    var cellBackgroundColors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        
        colorTableView.delegate = self
        colorTableView.dataSource = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = cellBackgroundColors[indexPath.row]
        
        return cell
    }

}


