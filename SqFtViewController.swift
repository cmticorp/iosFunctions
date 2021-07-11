//
//  SqFtViewController.swift
//  functionPractice
//
//  Created by James Graver on 7/5/20.
//  Copyright © 2020 James Graver. All rights reserved.
//

import UIKit

var lv_hght: Float = 0
var lv_width: Float = 0
var lv_sqft: Float = 0


class SqFtViewController: UIViewController {
    @IBOutlet weak var heightFld: UITextField!
    @IBOutlet weak var widthFld: UITextField!
    @IBOutlet weak var sqftFld: UITextField!
    
    @IBAction func calcSqFt(_ sender: Any) {
        var zanswer: String = " "
        lv_hght = (heightFld.text! as NSString).floatValue
        lv_width = (widthFld.text! as NSString).floatValue
        
        let zcalcClass = calculateThings()
        lv_sqft = zcalcClass.calcSqFt(zheight: lv_hght, zwidth: lv_width)
        
        zanswer = String(lv_sqft)
        
        sqftFld.text = zanswer
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
