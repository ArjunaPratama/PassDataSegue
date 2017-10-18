//
//  ViewController.swift
//  PassingDataSegue
//
//  Created by DOTS2 on 10/18/17.
//  Copyright © 2017 Arjuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etEmail: UITextField!
    @IBOutlet weak var etPassword: UITextField!
    @IBOutlet weak var etUsername: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //mengecek apakah segue dengan nama passData ada atau Tidak
        if (segue.identifier == "passData"){
            //deklarasi kirimData sebagai destinasi segue dengan nama viewcontroller : GetDataViewController
            let kirimData = segue.destination as! GetDataViewController
            
            //put data yang akan dikirm
            //mengirimkan data username
            kirimData.username = etUsername.text!
            //mengirimkan data enamil
            kirimData.email = etEmail.text!
            //mengirimkan data password
            kirimData.password = etPassword.text!
        }
    }
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

