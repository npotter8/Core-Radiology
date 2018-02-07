//
//  ViewController.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 10/30/17.
//  Copyright © 2017 Core Medical Apps, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    var anatomy = AnatomyView(title: "")
    var whichSection = ""
    
    // Main page button setup
    @IBOutlet var menuButton: UIButton!
    @IBOutlet var menuButtonBottom: UIImageView!
    @IBOutlet var menuButtonTop: UIImageView!

    @IBOutlet var logo: UIImageView!
    @IBOutlet var terms: UITextView!
    @IBOutlet var acceptButton: UIButton!
    @IBAction func acceptButtonPressed(_ sender: Any) {
        defaults.set(true, forKey: "termsAccepted")
        hideTerms()
        showMenu()
    }
    
    @IBOutlet var extraMenu: UIView!
    @IBOutlet var decisionToolsButton: UIButton!
    @IBAction func decisionToolsButtonPressed(_ sender: Any) {
        whichSection = "TOOLS"
        loadXRays()
    }
    @IBOutlet var xRayBasicsButton: UIButton!
    @IBAction func xRayBasicsButtonPressed(_ sender: Any) {
        whichSection = "BASICS"
        loadXRays()
    }
    @IBAction func aboutButtonPressed(_ sender: Any) {
        whichSection = "ABOUT"
        loadExtraMenu()
    }
    @IBAction func contactButtonPressed(_ sender: Any) {
        whichSection = "CONTACT"
        loadExtraMenu()
    }
    
    func loadExtraMenu(){
        let menuVC = storyboard?.instantiateViewController(withIdentifier: "Basics") as! XRayBasicsViewController
        menuVC.menuOption = whichSection
        navigationController?.pushViewController(menuVC, animated: true)
    }
    
    func loadXRays(){
        let injuryVC = storyboard?.instantiateViewController(withIdentifier: "InjuriesViewController") as! InjuriesTableViewController
        injuryVC.currentView = 0
        injuryVC.currentView = 0
        injuryVC.currentSection = whichSection
        navigationController?.pushViewController(injuryVC, animated: true)
    }
    
    var menuBool = true
    @IBAction func menuButtonPressed(_ sender: Any) {
        if menuBool == true{
            menuToArrow()
        }
        else{
            arrowToMenu()
        }
        menuBool = !menuBool
    }
    
    func menuToArrow() {
        let rotateClockwise = CGAffineTransform(rotationAngle: CGFloat(Double.pi/5))
        let rotateCounterClockwise = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/5))
        let moveUp = CGAffineTransform(translationX: -1, y: -3)
        let moveDown = CGAffineTransform(translationX: -1, y: 3)
        let shorten = CGAffineTransform(scaleX: 0.6, y: 1)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.menuButtonTop.transform = shorten.concatenating(rotateCounterClockwise).concatenating(moveDown)
                        self.menuButtonBottom.transform = shorten.concatenating(rotateClockwise).concatenating(moveUp)
        })
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.extraMenu.center.x += 145
        })
    }
    
    func arrowToMenu() {
        let flatten = CGAffineTransform(rotationAngle: 0)
        let normalize = CGAffineTransform(scaleX: 1, y: 1)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.menuButtonTop.transform = flatten.concatenating(normalize)
                        self.menuButtonBottom.transform = flatten.concatenating(normalize)
                        
                        
        })
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.extraMenu.center.x -= 145
        })
    }
    
    @IBOutlet var armView: UIView!
    @IBOutlet var legView: UIView!
    @IBOutlet var spineView: UIView!
    @IBOutlet var torsoView: UIView!
    @IBOutlet var headerView: UIView!
    @IBOutlet var spineLabel: UILabel!
    @IBOutlet var torsoLabel: UILabel!
    @IBOutlet var legLabel: UILabel!
    @IBOutlet var armLabel: UILabel!
    @IBOutlet var extraMenuView: UIView!
    
    @IBOutlet var shoulderButton: UIButton!
    @IBAction func shoulderButtonPressed(_ sender: Any) {
        anatomy = shoulder
        sectionButtonPressed()
    }
    @IBOutlet var chestButton: UIButton!
    @IBAction func chestButtonPressed(_ sender: Any) {
        anatomy = chest
        sectionButtonPressed()
    }
    @IBOutlet var abdomenButton: UIButton!
    @IBAction func abdomenButtonPressed(_ sender: Any) {
        anatomy = abdomen
        sectionButtonPressed()
    }
    @IBOutlet var cervicalSpineButton: UIButton!
    @IBAction func cervicalSpineButtonPressed(_ sender: Any) {
        anatomy = cSpine
        sectionButtonPressed()
    }
    @IBOutlet var lumbarSpineButton: UIButton!
    @IBAction func lumbarSpineButtonPressed(_ sender: Any) {
        anatomy = lSpine
        sectionButtonPressed()
    }
    @IBOutlet var elbowButton: UIButton!
    @IBAction func elbowButtonPressed(_ sender: Any) {
        anatomy = elbow
        sectionButtonPressed()
    }
    @IBOutlet var wristButton: UIButton!
    @IBAction func wristButtonPressed(_ sender: Any) {
        anatomy = wrist
        sectionButtonPressed()
    }
    @IBOutlet var handButton: UIButton!
    @IBAction func handButtonPressed(_ sender: Any) {
        anatomy = hand
        sectionButtonPressed()
    }
    @IBOutlet var hipButton: UIButton!
    @IBAction func hipButtonPressed(_ sender: Any) {
        anatomy = hip
        sectionButtonPressed()
    }
    @IBOutlet var kneeButton: UIButton!
    @IBAction func kneeButtonPressed(_ sender: Any) {
        anatomy = knee
        sectionButtonPressed()
    }
    @IBOutlet var ankleButton: UIButton!
    @IBAction func ankleButtonPressed(_ sender: Any) {
        anatomy = ankle
        sectionButtonPressed()
    }
    @IBOutlet var footButton: UIButton!
    @IBAction func footButtonPressed(_ sender: Any) {
        anatomy = foot
        sectionButtonPressed()
    }
    
    func sectionButtonPressed() {
        let sectionVC = storyboard?.instantiateViewController(withIdentifier: "SectionViewController") as! SectionViewController
        sectionVC.anatomy = anatomy
        sectionVC.anatomy.section = true
        navigationController?.pushViewController(sectionVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        decisionToolsButton.isHidden = true
        
        terms.layer.cornerRadius = 15.0
        terms.textContainerInset = UIEdgeInsetsMake(15, 10, 15, 10)
        acceptButton.layer.cornerRadius = 15.0
        extraMenu.layer.cornerRadius = 15
        
        let moveLeft = CGAffineTransform(translationX: -UIScreen.main.bounds.width/2, y: 0)
        let moveRight = CGAffineTransform(translationX: UIScreen.main.bounds.width/2, y: 0)
        
        armLabel.transform = moveLeft
        spineLabel.transform = moveLeft
        legLabel.transform = moveRight
        torsoLabel.transform = moveRight
        shoulderButton.transform = moveLeft
        elbowButton.transform = moveLeft
        wristButton.transform = moveLeft
        handButton.transform = moveLeft
        cervicalSpineButton.transform = moveLeft
        lumbarSpineButton.transform = moveLeft
        hipButton.transform = moveRight
        kneeButton.transform = moveRight
        ankleButton.transform = moveRight
        footButton.transform = moveRight
        chestButton.transform = moveRight
        abdomenButton.transform = moveRight

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        terms.setContentOffset(CGPoint.zero, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        terms.alpha = 0.0

        
        let flatten = CGAffineTransform(rotationAngle: 0)
        let normalize = CGAffineTransform(scaleX: 1, y: 1)
        self.menuButtonTop.transform = flatten.concatenating(normalize)
        self.menuButtonBottom.transform = flatten.concatenating(normalize)
        
        if menuBool == false{
            extraMenu.center.x -= 145
            menuBool = true
        }
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //Show terms
        
        let defaults = UserDefaults.standard
        let termsAccepted = defaults.object(forKey: "termsAccepted")
        if termsAccepted == nil{
            extraMenuView.alpha = 0
            extraMenuView.isHidden = true
            UIView.animate(withDuration: 0.3, delay: 0.0, options: [.curveEaseInOut],
                           animations: {
                            self.terms.frame.size.width += 50
                            self.terms.frame.size.height += 50
                            self.terms.frame.origin.x -= 25
                            self.terms.frame.origin.y -= 25
                            self.terms.alpha = 1.0
            })
            UIView.animate(withDuration: 0.5, delay: 0.3, options: [.curveEaseInOut],
                           animations: {
                            self.acceptButton.center.y -= 110
            })
            
            let when = DispatchTime.now() + 0.3
            DispatchQueue.main.asyncAfter(deadline: when) {
                UIView.transition(with: self.terms, duration: 0.2, options: .transitionCrossDissolve, animations: { self.terms.textColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0) })
            }
        }
        else{
            showMenu()
        }
    }
    
    func hideTerms() {
        self.extraMenuView.isHidden = false
        UIView.transition(with: self.terms, duration: 0.2, options: .transitionCrossDissolve, animations: { self.terms.textColor = .white })
        
        UIView.animate(withDuration: 0.3, delay: 0.2, options: [.curveEaseInOut],
                       animations: {
                        self.terms.frame.size.width += 50
                        self.terms.frame.size.height += 50
                        self.terms.frame.origin.x -= 25
                        self.terms.frame.origin.y -= 25
                        self.terms.alpha = 1.0
        })
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [.curveEaseInOut],
                       animations: {
                        self.acceptButton.center.y -= 110
                        self.extraMenuView.alpha = 1
        })
        
        let when = DispatchTime.now() + 0.3
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.terms.isHidden = true
            self.acceptButton.isHidden = true
        }
    }
    
    func showMenu() {
        let defaults = UserDefaults.standard
        let appJustOpened: Bool = defaults.object(forKey: "appJustOpened") as! Bool
        
        let moveCenter = CGAffineTransform(translationX: 0, y: 0)

        
        if appJustOpened == true{
            let labelDict: [UILabel : Double] = [
                armLabel : 0,
                legLabel : 0,
                spineLabel : 5,
                torsoLabel : 5
            ]
            
            let buttonDict: [UIButton : Double] = [
                shoulderButton : 1,
                hipButton : 1,
                elbowButton : 2,
                kneeButton : 2,
                wristButton : 3,
                ankleButton : 3,
                handButton : 4,
                footButton : 4,
                cervicalSpineButton : 6,
                chestButton : 6,
                lumbarSpineButton : 7,
                abdomenButton : 7
            ]
            
            for (item, value) in buttonDict{
                let delay: Double = value * 0.025
                UIView.animate(withDuration: 0.5, delay: delay, options: [.curveEaseInOut],
                               animations: {
                                item.transform = moveCenter
                })
            }
            
            for (item, value) in labelDict{
                let delay: Double = value * 0.025
                UIView.animate(withDuration: 0.5, delay: delay, options: [.curveEaseInOut],
                               animations: {
                                item.transform = moveCenter
                })
            }
            
            defaults.set(false, forKey: "appJustOpened")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

