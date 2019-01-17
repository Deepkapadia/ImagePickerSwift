//
//  ViewController.swift
//  ImagePickerSwift
//
//  Created by MAC OS on 5/19/17.
//  Copyright © 2017 MAC OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imgv: UIImageView!
    
    let pickr=UIImagePickerController();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_click(_ sender: Any) {
        
        pickr.sourceType=UIImagePickerControllerSourceType.photoLibrary;
        pickr.delegate=self;
        
        self.present(pickr, animated: true, completion: nil);
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        imgv.image=info[UIImagePickerControllerOriginalImage] as! UIImage?;
        imgv.contentMode = .scaleAspectFit;
        
        self.dismiss(animated: true, completion: nil);
    }

}

