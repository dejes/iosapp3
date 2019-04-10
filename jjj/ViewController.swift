//
//  ViewController.swift
//  jjj
//
//  Created by t450sMAC on 2019/4/9.
//  Copyright © 2019 t450sMAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var price: UILabel!
    @IBOutlet var enter: UIButton!
    @IBOutlet var pic: UIImageView!
    @IBOutlet var rnd: UISwitch!
    @IBOutlet var brend: UISegmentedControl!
    @IBOutlet var priceslider: UISlider!
    @IBOutlet var tf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sl(_ sender: Any) {
        price.text=String(Int(priceslider.value))
    }
    
    @IBAction func ent(_ sender: Any) {
        if let input=tf.text,let _num=Int(input){
            price.text = String(_num)
            
        }
        view.endEditing(true)
       
    }
    
    @IBAction func rndswitch(_ sender: UISwitch) {
        let randomnum=Int.random(in:0...1)
        
        if (sender.isOn) {
            brend.setEnabled(false, forSegmentAt: 0)
            brend.setEnabled(false, forSegmentAt: 1)
            
            switch(randomnum){
            case 0:
                pic.image = UIImage(named: "0")
                break;
            case 1:
                pic.image = UIImage(named: "ubfu0dAD")
                break;
            default:
                break;
            }
            
        }
        else{
            brend.setEnabled(true, forSegmentAt: 0)
            brend.setEnabled(true, forSegmentAt: 1)
        }
    }
    
    @IBAction func segm(_ sender: Any) {
        switch(brend.selectedSegmentIndex){
        case 0:
            pic.image = UIImage(named: "ubfu0dAD")
            break;
        case 1:
            pic.image = UIImage(named: "0")
            break;
        default:
            break;
        }
    }
    
    @IBAction func gogo(_ sender: Any) {
        
    }
    func whichgraphiccard(){
        
    }
    @IBAction func taimu(_ sender: Any) {
    }
}

