//
//  ViewController.swift
//  UniversalBsp
//
//  Created by Christian Bleske on 11.03.15.
//  Copyright (c) 2015 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.nativeBounds
        
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        print("Width=\(screenWidth)")
        print("Height=\(screenHeight)")
        
        switch (screenHeight) {
            case 960:
                self.uiImageView.image = UIImage(named: "background-960@2x.png")!
                break;
            case 1136:
                self.uiImageView.image = UIImage(named: "background-1136@2x.png")!
                break;
            case 1334:
                self.uiImageView.image = UIImage(named: "background-1334@2x.png")!
                break;
            case 2208:
                self.uiImageView.image = UIImage(named: "background-2208@3x.png")!
                break;
            case 1024:
                self.uiImageView.image = UIImage(named: "background-1024.png")!
                break;
            case 2048:
                self.uiImageView.image = UIImage(named: "background-2048@2x.png")!
                break;
            default:
                break;
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button_Pressed(_ sender: AnyObject) {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad {
            self.showAlertViewWithTitle("Neues Spiel", message: "iPad-Version...")
        }
        
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            self.showAlertViewWithTitle("Neues Spiel", message: "iPhone-Version...")
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            print("Landscape-Mode")
        } else {
            print("Portrait-Mode")
        }
    }
    
    func showAlertViewWithTitle(_ title:String, message:String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            // ...
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
    }

}

