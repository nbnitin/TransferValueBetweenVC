//
//  ViewController.swift
//  Passing Values
//
//  Created by Nitin Bhatia on 31/08/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

protocol sendValue{
    func goGetValue(name:String,pass:String)
}

class ViewController: UIViewController {
    
    var delegate : sendValue!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblTitle: UILabel!
    var ti : String = ""    

    override func viewDidLoad() {
        super.viewDidLoad()
        btnSave.addTarget(self, action: #selector(save(_:)), for: .touchUpInside)
        lblTitle.text = ti
        
        if(lblTitle.text == ""){
            lblTitle.text = sharedInstance.getData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func save(_ sender:Any){
        delegate.goGetValue(name: txtUserName.text!, pass: txtPassword.text!)
        self.dismiss(animated: false, completion: nil)
        
    }
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
   

}

