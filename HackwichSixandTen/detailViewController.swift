//
//  detailViewController.swift
//  HackwichSixandTen
//
//  Created by Kaylene Carnavos on 11/2/22.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = imagePass {imageView.image = UIImage(named: imageName)}
        
        // Do any additional setup after loading the view.
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
