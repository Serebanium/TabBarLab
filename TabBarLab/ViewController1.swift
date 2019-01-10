//
//  ViewController.swift
//  TabBarLab
//
//  Created by Сергей Иванов on 06/01/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    var currentImg: UIImage?

    @IBOutlet weak var image1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(imageTapped1(tapGestureRecognizer:)))
        image1.isUserInteractionEnabled = true
        image1.addGestureRecognizer(tapGestureRecognizer1)
    }
    @objc func imageTapped1(tapGestureRecognizer: UITapGestureRecognizer)
    {
        currentImg = image1.image
        performSegue(withIdentifier: "1toFull", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc3_1: ViewController3_1 = segue.destination as! ViewController3_1
        vc3_1.img = currentImg
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }

}

