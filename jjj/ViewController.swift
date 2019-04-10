//
//  ViewController.swift
//  jjj
//
//  Created by t450sMAC on 2019/4/9.
//  Copyright © 2019 t450sMAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var datelabel: UILabel!
   
    @IBOutlet var datepicker: UIDatePicker!
    @IBOutlet var price: UILabel!
    @IBOutlet var enter: UIButton!
    @IBOutlet var pic: UIImageView!
    @IBOutlet var rnd: UISwitch!
    @IBOutlet var brend: UISegmentedControl!
    @IBOutlet var priceslider: UISlider!
    @IBOutlet var tf: UITextField!
    @IBOutlet var YGC: UILabel!
    
    
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
        
        if (sender.isOn) {
            priceslider.isEnabled=false
        }
        else{
            priceslider.isEnabled=true
        }
    }
    
    @IBAction func segm(_ sender: Any) {
        
    }
    
    @IBAction func gogo(_ sender: Any) {
        if let input=price.text,let n=Int(input){
            switch(brend.selectedSegmentIndex){
            case 0:
                whichgraphiccard(b: 0, _num:n)
                break;
            case 1:
                whichgraphiccard(b: 1, _num:n)
                break;
            default:
                break;
            }
        }
    }
    func whichgraphiccard(b:Int , _num:Int){
        
            switch(b){
            case 0:
                if _num<3800{
                    YGC.text="no graphic card"
                    pic.image = UIImage(named: "white")
                }
                else if _num<=4800 && _num>=3800{
                    pic.image = UIImage(named: "570")
                    YGC.text="Radeon RX 570 4G"
                }
                else if _num>4800 && _num<=6800{
                    pic.image = UIImage(named: "580")
                    YGC.text="Radeon RX 580 4G"
                }
                else if _num>6800 && _num<7800{
                    pic.image = UIImage(named: "580")
                    YGC.text="Radeon RX 580 8G"
                }
                else if _num>=7800 && _num<23000{
                    pic.image = UIImage(named: "590")
                    YGC.text="Radeon RX 590 8G"
                }
                else if _num>=23000{
                    pic.image = UIImage(named: "radeonvii")
                    YGC.text="Radeon VII"
                }
                break
            case 1:
                if _num<3000{
                    YGC.text="no graphic card"
                    pic.image = UIImage(named: "white")
                }
                else if _num>=3000 && _num<4000{
                    pic.image = UIImage(named: "1050")
                    YGC.text="Geforce GTX 1050"
                }
                else if _num>=4000 && _num<6300{
                    pic.image = UIImage(named: "10603g")
                    YGC.text="Geforce GTX 1060 3G"
                }
                else if _num<7300 && _num>=6300{
                    pic.image = UIImage(named: "10606g")
                    YGC.text="Geforce GTX 1060 6G"
                }
                else if _num<9000 && _num>=7300{
                    pic.image = UIImage(named: "1660")
                    YGC.text="Geforce GTX 1660"
                }
                else if _num<12000 && _num>=9000{
                    pic.image = UIImage(named: "1660ti")
                    YGC.text="Geforce GTX 1660 ti"
                }
                else if _num<16000 && _num>=12000{
                    pic.image = UIImage(named: "2060")
                    YGC.text="Geforce RTX 2060"
                }
                else if _num<23000 && _num>=16000{
                    pic.image = UIImage(named: "2070")
                    YGC.text="Geforce RTX 2070"
                }
                else if _num<37000 && _num>=23000{
                    pic.image = UIImage(named: "2080")
                    YGC.text="Geforce RTX 2080"
                }
                else if _num>=37000{
                    pic.image = UIImage(named: "2080ti")
                    YGC.text="Geforce RTX 2080 ti"
                }
                break
            default:
                break;
            }
            
            
        }
    
    @IBAction func randomcard(_ sender: Any) {
        let r1 = Int.random(in: 3800...40000)
        let r2 = Int.random(in:0...1)
        whichgraphiccard(b:r2, _num:r1)
    }
    
    @IBAction func dp(_ sender: Any) {
        datepicker.datePickerMode = UIDatePicker.Mode.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let selectedDate = dateFormatter.string(from: datepicker.date)
        datelabel.text = selectedDate
    }
    
    
}

