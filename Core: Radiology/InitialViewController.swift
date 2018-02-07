//
//  InitialViewController.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 11/16/17.
//  Copyright © 2017 Core Medical Apps, LLC. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet var subluxImage: UIImageView!
    @IBOutlet var xButton: UIImageView!
    @IBOutlet var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let sublux = CGAffineTransform(translationX: -13, y: 43)
        
        UIView.animate(withDuration: 0.9, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.xButton.transform = sublux
        })
        
        let oneSecond = DispatchTime.now() + 1.0
        DispatchQueue.main.asyncAfter(deadline: oneSecond) {
            self.loadHome()
        }
    }
    
    func loadHome(){
        let navVc = storyboard?.instantiateViewController(withIdentifier: "StartingNavController") as! UINavigationController
        present(navVc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // super.viewWillAppear(animated)
        
        //subluxImage.center.x  -= view.bounds.width
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
