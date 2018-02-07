//
//  InjuriesTableViewController.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 11/12/17.
//  Copyright © 2017 Core Medical Apps, LLC. All rights reserved.
//

import UIKit

class InjuriesTableViewController: UITableViewController {

    var anatomy = AnatomyView(title: "", views: [])
    var injuryListSorted: [InjuryView] = []
    var currentSection = ""
    var currentView: Int = 0
    var injuryNames: [String] = []
    var injuryNamesSorted: [String] = []
    
    let tutorialView = UIView()
    let tutorialLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 230, height: 140))
    let tutorialButton = UIButton(frame: CGRect(x: 75, y: 160, width: 100, height: 30))
    var tutorialCounter: Int = 0

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch currentSection{
        case "BASICS":
            self.title = "X-Ray Basics"
            injuryNames = ["Basics of Plain Films", "What Views To Order", "Spotting a Fracture", "Describing Fractures"]
        case "TOOLS":
            self.title = "Clinical Decision Tools"
            injuryNames = ["Ottawa Ankle Rules", "Ottawa Foot Rules", "NEXUS C-Spine Rules"]
        default:
            self.title = anatomy.title + " // Injuries"
            if anatomy.injuryList[currentView][anatomy.currentStep].count >= 1{
                for n in 0...anatomy.injuryList[currentView][anatomy.currentStep].count-1{
                    if anatomy.injuryList[currentView][anatomy.currentStep][n].injuryMasterTitle != ""{
                        injuryNames.append(anatomy.injuryList[currentView][anatomy.currentStep][n].injuryMasterTitle)
                    }
                    else{
                        injuryNames.append(anatomy.injuryList[currentView][anatomy.currentStep][n].injuryTitle[0])
                    }
                }
            }
            let injuryTutorialShown = defaults.object(forKey: "injuryTutorialShown3")
            if injuryTutorialShown == nil && anatomy.currentStep != 0 && injuryNames.count != 0{
                loadTutorial(tutorialCode: 1)
                defaults.set(true, forKey: "injuryTutorialShown3")
            }
            else if injuryNames.count == 0{
                emptyTable()
            }
        }
        
        injuryNamesSorted = injuryNames.sorted()
        
        if currentSection != "BASICS" && currentSection != "TOOLS"{
            for name in injuryNamesSorted {
                for injury in self.anatomy.injuryList[self.currentView][self.anatomy.currentStep]{
                    if name == injury.injuryMasterTitle{
                        injuryListSorted.append(injury)
                    }
                }
            }
        }
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    func loadTutorial(tutorialCode: Int) {
        tutorialCounter = tutorialCode
        tutorialView.backgroundColor = .white
        tutorialView.layer.cornerRadius = 15
        tutorialView.translatesAutoresizingMaskIntoConstraints = false
        tutorialLabel.textAlignment = .center
        tutorialLabel.numberOfLines = 10
        tutorialLabel.backgroundColor = .white
        tutorialLabel.textColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0)
        tutorialButton.backgroundColor = UIColor(red:0.23, green:0.72, blue:0.44, alpha:1.0)
        tutorialButton.setTitleColor(.white, for: .normal)
        tutorialButton.setTitle("Got it", for: .normal)
        tutorialButton.layer.cornerRadius = 15
        self.view.addSubview(tutorialView)
        tutorialView.addSubview(tutorialLabel)
        tutorialView.addSubview(tutorialButton)
        tutorialView.centerXAnchor.constraint(equalTo: tutorialView.superview!.centerXAnchor).isActive = true
        tutorialView.centerYAnchor.constraint(equalTo: tutorialView.superview!.centerYAnchor).isActive = true
        tutorialView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tutorialView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        tutorialButton.addTarget(self, action:#selector(tutorialButtonPressed), for: .touchUpInside)
        
        let tutorialLabelDict: [Int : String] = [
            1: "Appear",
            2 : "The injuries listed here can all make the image on the previous page look abnormal. You're looking at your differential!",
            3 : "Dismiss"
        ]
        if tutorialLabelDict[tutorialCode] == "Appear"{
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.tutorialView.center.x -= UIScreen.main.bounds.width
            })
            tutorialCounter += 1
            tutorialLabel.text = tutorialLabelDict[tutorialCounter]
            
        }
        else if tutorialLabelDict[tutorialCode] == "Dismiss" {
            UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
                self.tutorialView.transform = CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
            },
                           completion: { (finished: Bool) in
                            self.tutorialView.removeFromSuperview()
            })
        }
        else{
            tutorialLabel.text = tutorialLabelDict[tutorialCode]
        }
    }
    
    @objc func tutorialButtonPressed() {
        tutorialCounter += 1
        loadTutorial(tutorialCode: tutorialCounter)
    }
    
    func emptyTable(){
        var label: String = ""
        let injuryKey = anatomy.title + String(currentView) + String(anatomy.currentStep)
        switch injuryKey{
        case "Chest01":
            label = "This film may be of poor quality. Consider reshooting this x-ray if you are unable to fully visualize pathology"
        case "Chest02":
            label = "This film may be of poor quality. Consider reshooting this x-ray if you are unable to fully visualize pathology"
        case "Chest03":
            label = "This film may be of poor quality. Consider reshooting this x-ray if you are unable to fully visualize pathology"
        default:
            label = "There is no content available for this step. We are aware of the problem and will add some as soon as possible!"
        }
        tutorialView.backgroundColor = .white
        tutorialView.layer.cornerRadius = 15
        tutorialView.translatesAutoresizingMaskIntoConstraints = false
        tutorialLabel.textAlignment = .center
        tutorialLabel.numberOfLines = 10
        tutorialLabel.backgroundColor = .white
        tutorialLabel.textColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0)
        tutorialLabel.text = label
        self.view.addSubview(tutorialView)
        tutorialView.addSubview(tutorialLabel)
        tutorialView.centerXAnchor.constraint(equalTo: tutorialView.superview!.centerXAnchor).isActive = true
        tutorialView.topAnchor.constraint(equalTo: tutorialView.superview!.topAnchor, constant: 100).isActive = true
        tutorialView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tutorialView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return injuryNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InjuriesTableViewCell", for: indexPath) as? InjuriesTableViewCell

        switch currentSection{
        case "BASICS":
            cell?.injuryLabel?.text = injuryNames[indexPath.row]
        case "TOOLS":
            cell?.injuryLabel?.text = injuryNames[indexPath.row]
        default:
            cell?.injuryLabel?.text = injuryNamesSorted[indexPath.row]
        }
        
        tableView.backgroundColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0)

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch currentSection{
        case "BASICS":
            let menuVC = storyboard?.instantiateViewController(withIdentifier: "Basics") as! XRayBasicsViewController
            menuVC.menuOption = injuryNames[indexPath.row]
            navigationController?.pushViewController(menuVC, animated: true)
        case "TOOLS":
            let toolsVC = storyboard?.instantiateViewController(withIdentifier: "Calculator") as! CalculatorViewController
            toolsVC.menuOption = injuryNames[indexPath.row]
            navigationController?.pushViewController(toolsVC, animated: true)
        default:
            let sectionVc = storyboard?.instantiateViewController(withIdentifier: "SectionViewController") as! SectionViewController
            // Pass information about the section and cell to the next viewcontroller
            sectionVc.currentSection = currentSection
            sectionVc.injury = injuryListSorted[indexPath.row]
            sectionVc.anatomy = anatomy
            sectionVc.anatomy.section = false
            navigationController?.pushViewController(sectionVc, animated: true)
        }
    }
    
    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParentViewController {
            if currentSection != "BASICS" {
                let sectionVc = storyboard?.instantiateViewController(withIdentifier: "SectionViewController") as! SectionViewController
                sectionVc.section = false
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
