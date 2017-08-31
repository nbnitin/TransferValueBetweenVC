//
//  ViewController1.swift
//  Passing Values
//
//  Created by Nitin Bhatia on 31/08/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UITableViewDelegate,UITableViewDataSource,sendValue {
    
    let items = ["Delegate and Model Popup","Using Shared Instance"]

    override func viewDidLoad() {
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
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == 0){
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let alertController = storyBoard.instantiateViewController(withIdentifier: "Model") as! ViewController
            alertController.delegate = self
            alertController.ti = "Delegate and Model PopUp"
            alertController.providesPresentationContextTransitionStyle = true
            alertController.definesPresentationContext = true
            alertController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alertController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            
            self.present(alertController, animated: true, completion: nil)

        } else if (indexPath.row == 1){
            
            
            sharedInstance.setData(str: "Using Shared Instance")
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let alertController = storyBoard.instantiateViewController(withIdentifier: "Model") as! ViewController
        
            alertController.providesPresentationContextTransitionStyle = true
            alertController.definesPresentationContext = true
            alertController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            alertController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            
            self.present(alertController, animated: true, completion: nil)

        }
        
        
    }
    
    func goGetValue(name: String, pass: String) {
        print(name)
        print(pass)
    }

}
