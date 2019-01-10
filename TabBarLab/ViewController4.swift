//
//  ViewController4.swift
//  TabBarLab
//
//  Created by Сергей Иванов on 08/01/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    var currentImg: UIImage?
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(imageTapped1(tapGestureRecognizer:)))
        image1.isUserInteractionEnabled = true
        image1.addGestureRecognizer(tapGestureRecognizer1)
        
        let tapGegtureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped2(tapGestureRecognizer:)))
        image2.isUserInteractionEnabled = true
        image2.addGestureRecognizer(tapGegtureRecognizer2)
        
        let tapGegtureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped3(tapGestureRecognizer:)))
        image3.isUserInteractionEnabled = true
        image3.addGestureRecognizer(tapGegtureRecognizer3)
        
        let tapGegtureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(imageTapped4(tapGestureRecognizer:)))
        image4.isUserInteractionEnabled = true
        image4.addGestureRecognizer(tapGegtureRecognizer4)
    }
    
    @objc func imageTapped1(tapGestureRecognizer: UITapGestureRecognizer)
    {
        currentImg = image1.image
        performSegue(withIdentifier: "4toFull", sender: nil)
        
    }
    
    @objc func imageTapped2(tapGestureRecognizer: UITapGestureRecognizer)
    {
        currentImg = image2.image
        performSegue(withIdentifier: "4toFull", sender: nil)
    }
    
    @objc func imageTapped3(tapGestureRecognizer: UITapGestureRecognizer)
    {
        currentImg = image3.image
        performSegue(withIdentifier: "4toFull", sender: nil)
    }
    
    @objc func imageTapped4(tapGestureRecognizer: UITapGestureRecognizer)
    {
        currentImg = image4.image
        performSegue(withIdentifier: "4toFull", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc3_1: ViewController3_1 = segue.destination as! ViewController3_1
        vc3_1.img = currentImg
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
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
