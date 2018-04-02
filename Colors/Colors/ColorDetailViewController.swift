//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Cameron Wandfluh on 4/1/18.
//  Copyright © 2018 Cameron Wandfluh. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController{

    var name: String?
    var color: UIColor?
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = name
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
