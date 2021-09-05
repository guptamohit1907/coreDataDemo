//
//  ViewController.swift
//  coreDataDemo
//
//  Created by Acxiom Consulting on 31/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSaveClick(_ sender : Any){
        let dict = ["name":txtName.text ,"address":txtAddress.text,"city":txtCity.text,"mobile":txtMobile.text]
        DatabaseHelper.sharedInstance.save(object: dict as! [String : String])
    }
}

