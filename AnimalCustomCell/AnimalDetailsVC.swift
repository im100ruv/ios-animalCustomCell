//
//  AnimalDetailsVC.swift
//  AnimalCustomCell
//
//  Created by Im100ruv on 22/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class AnimalDetailsVC: UIViewController {

    @IBOutlet weak var imgAnimal: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSound: UILabel!
    @IBOutlet weak var lblSize: UILabel!
    
    var animal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgAnimal.image = animal?.image
        lblName.text = animal?.name.capitalized
        lblSound.text = animal?.sound.capitalized
        lblSize.text = animal?.size.capitalized
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
