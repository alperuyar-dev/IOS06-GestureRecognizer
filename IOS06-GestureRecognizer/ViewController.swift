//
//  ViewController.swift
//  IOS06-GestureRecognizer
//
//  Created by Alper Uyar on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var charLabel: UILabel!
    
    var isHarry=true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled=true
        
        let gestureTap = UITapGestureRecognizer(target: self, action:  #selector(changePic) )
        
        imageView.addGestureRecognizer(gestureTap)
    }

    @objc func changePic(){
        if isHarry==true{
            imageView.image = UIImage(named: "jamesbond")
            charLabel.text="James Bond"
            isHarry=false
        }else if isHarry==false{
            imageView.image=UIImage(named: "harry1")
            charLabel.text="Harry Potter"
            isHarry=true
        }
    }
}

