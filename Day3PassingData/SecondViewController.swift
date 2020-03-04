//
//  SecondViewController.swift
//  Day3PassingData
//
//  Created by Avani Patel on 3/3/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var name: String?
    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationController?.isNavigationBarHidden = true
        //hide bar on tap
        //self.navigationController?.hidesBarsOnTap = true
        //hide back button from navigation bar
        self.navigationItem.hidesBackButton = true
        self.addCloseButton()
        //go to home page
        //self.navigationController?.popToRootViewController(animated: true)
        // go to perticular view controller
        //let bvc = self.navigationController?.viewControllers[1]
        //self.navigationController?.popToViewController(bvc, animated: true)
        
        if let nm = name
        {
            self.lblWelcome.text = "Welcome, \(nm)"
            self.navigationItem.title = "Welcome, \(nm)"
        }
        else
        {
            self.lblWelcome.text = "No Name sent from First VC"
        }
        
        // Do any additional setup after loading the view.
    }
    
    private func addCloseButton()
    {
        let btnClose = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(self.goBack))
        self.navigationItem.rightBarButtonItem = btnClose
    }

    @objc func goBack()
    {
        self.navigationController?.popViewController(animated: true)
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
