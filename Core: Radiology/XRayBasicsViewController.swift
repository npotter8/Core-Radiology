//
//  XRayBasicsViewController.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 12/18/17.
//  Copyright © 2017 Core Medical Apps, LLC. All rights reserved.
//

import UIKit

class XRayBasicsViewController: UIViewController {

    @IBOutlet var infoScroll: UIScrollView!
    
    var menuOption: String = ""
    var totalHeight: CGFloat = 0
    
    let emailButton = UIButton()
    let aboutLabel = UILabel()
    let contactLabel = UILabel(frame: CGRect (x: 20, y: 20, width: (UIScreen.main.bounds.width-40), height: 120))
    let viewsToOrderLabel = UILabel()
    let viewsToOrder2Label = UILabel()
    let basicsLabel = UILabel()
    let basicsLabel2 = UILabel()
    let spottingFractureLabel = UILabel()
    let fractureDescriptionLabel = UILabel()
    let siteLabel = UILabel()
    let closedOpenLabel = UILabel()
    let fragmentsLabel = UILabel()
    let directionLabel = UILabel()
    let articularLabel = UILabel()
    let positionLabel = UILabel()
    let angulationLabel = UILabel()
    let rotationLabel = UILabel()
    let dislocationLabel = UILabel()
    let exampleLabel = UILabel()
    
    let siteImage = UIImageView()
    let closedOpenImage = UIImageView()
    let fragmentsImage = UIImageView()
    let directionImage = UIImageView()
    let articularImage = UIImageView()
    let positionImage = UIImageView()
    let angulationImage = UIImageView()
    let rotationImage = UIImageView()
    let dislocationImage = UIImageView()
    let exampleImage = UIImageView()
    let densityImage = UIImageView()
    let bordersImage = UIImageView()
    let typesOfFracturesImage = UIImageView()
    let twoViewsImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let titleFont = UIFont(name: "HelveticaNeue-Bold", size: 17)
        let infoFont = UIFont(name: "HelveticaNeue-Light", size: 17)
        let info = [NSAttributedStringKey.font : infoFont as Any]
        let bold = [NSAttributedStringKey.font : titleFont as Any]
        
        let contact = NSMutableAttributedString(string: "Have a suggestion or find an error? We know Sublux isn't perfect (yet), and would love to hear your thoughts.\n\n Or if you're interested in working on future projects, we're hiring and would like to talk!\n", attributes:info)
        let about = NSMutableAttributedString(string: "Sublux is designed to be the radiology app for the rest of us, giving students and other adult learners an introduction to X-ray interpretation.\n\nIt is not meant to be a comprehensive resource nor a replacement for a radiologist's read.\n\nThe unmarked X-ray images come mostly from Radiopaedia, which has generously allowed us to use them free of charge.\n\nSublux is copyrighted by Core Medical Apps, LLC.", attributes:info)
        let basics1 = NSMutableAttributedString(string: "When identifying structures on X-ray, there are 4 main colors to be aware of. Black is air or gas, dark gray is fat, light gray is soft tissue, and white is bone.", attributes: info)
        let basics2 = NSMutableAttributedString(string: "Lines on X-rays represent boundaries between two different densities.\n\n In the normal heart below on the left, for example, both the right and left borders are clearly visible, because the heart (soft tissue) sits next to the lung (air). On the right, the right middle lobe of the lung is consolidated (filled with fluid), giving it the density of soft tissue.\n\nSince the heart and consolidated lung have about the same density, the right heart border becomes indistinct.", attributes: info)
        let spottingFracture = NSMutableAttributedString(string: "Some fractures are obvious, but many are quite subtle. There are a few signs you can look for that will help you identify fractures. The fracture line can be either radiolucent (dark) or radiopaque (light), or may not be directly visible at all.\n\nThe bony cortex will often be disrupted-- sometimes in an obvious break, but often with only a slight defect. In pediatric patients, the bones are more flexible, and so the cortex may be bulged rather than broken.\n\nOften, there is bleeding or edema associated with a fracture. In the elbow and the knee, this excess fluid can displace fat pads, causing distinctive patterns on X-ray (see sections on elbow and knee for more details).", attributes: info)
        let fractureDescriptionInfo = NSMutableAttributedString(string: "When describing a fracture, there are several terms that are traditionally used. They are, in order:\n\n", attributes: info)
        let fractureDescriptionTitle = NSMutableAttributedString(string: "Closed/ Open, Direction, Fragments, Articular Involvement, Site, Fragment Position, Angulation, and Rotation\n", attributes: bold)
        let siteTitle = NSMutableAttributedString(string: "\nSite: ", attributes: bold)
        let siteInfo = NSMutableAttributedString(string: "The bone or bones involved, as well whether the fracture is in the proximal, middle, or distal third of the bone.", attributes: info)
        let closedOpenTitle = NSMutableAttributedString(string: "Closed or open:", attributes: bold)
        let closedOpenInfo = NSMutableAttributedString(string: " If there is a break in the skin over the fracture site, the fracture is considered open until proven otherwise.", attributes: info)
        let fragmentsTitle = NSMutableAttributedString(string: "\nFragments:", attributes: bold)
        let fragmentsInfo = NSMutableAttributedString(string: " If the fracture has at least 3 fragments, it is comminuted. If one fragment has been driven into the other, it is impacted.", attributes: info)
        let directionTitle = NSMutableAttributedString(string: "\nDirection:", attributes: bold)
        let directionInfo = NSMutableAttributedString(string: " The fracture can be described as either transverse (at 90 degrees to the long axis), oblique (at a slant to the long axis), or spiral (twisting around the bone).", attributes: info)
        let articularTitle = NSMutableAttributedString(string: "\nArticular Involvement:", attributes: bold)
        let articularInfo = NSMutableAttributedString(string: " If the fracture passes into the joint space, it is intra-articular.", attributes: info)
        let positionTitle = NSMutableAttributedString(string: "\nFragment Position:", attributes: bold)
        let positionInfo = NSMutableAttributedString(string: " If the fragments have slid sideways relative to one another, they are displaced. Displacement is described in the direction of the distal fragment. If the fragments have pulled apart in the direction of their long axes so there is a gap between them, the fracture is distracted. If the fragments are lying next to each other they are in bayonet apposition.", attributes: info)
        let angulationTitle = NSMutableAttributedString(string: "\nAngulation:", attributes: bold)
        let angulationInfo = NSMutableAttributedString(string: " If the fragments are tilted relative to one another, such that the long axes aren't paralell, the fracture is angulated. Angulation is described in the direction that the distal fragment is pointing.", attributes: info)
        let rotationTitle = NSMutableAttributedString(string: "\nRotation:", attributes: bold)
        let rotationInfo = NSMutableAttributedString(string: " If the fragments are rotated relative to one another, the fracture has rotational deformity. Rotation is described in the direction of rotation of the distal fragment. This is not always apparent on X-rays, and often is discovered on clinical exam.", attributes: info)
        let dislocationTitle = NSMutableAttributedString(string: "\nDislocation:", attributes: bold)
        let dislocationInfo = NSMutableAttributedString(string: " This occurs when the articular surfaces of one bone no longer align normally with the articular surfaces of another. There are two types of dislocation. Subluxation is when normal articular alignment is lost, but there is still some contact between the articular surfaces of the two bones. Dislocation is when there is no longer any contact between the articular surfaces of the two bones.", attributes: info)
        let exampleTitle = NSMutableAttributedString(string: "\nExample:", attributes: bold)
        let exampleInfo = NSMutableAttributedString(string: " Closed spiral extra-articular fracture of the distal third of the left tibia. Lateral displacement with lateral angulation.", attributes: info)
        let viewsToOrder = NSMutableAttributedString(string: "For the vast majority of applications, a single view is insufficient. Typically, you'll want to order 2 orthogonal views (at about 90 degrees to each other). This will help you visualize all the bone and better characterize fractures and associated injuries. Often, pathology will be invisible on one view-- if you only order one, you will miss important injuries, as seen below.", attributes: info)
        let viewsToOrder2 = NSMutableAttributedString(string: "Each joint has a typical series, usually containing an AP and a lateral view or their equivalents. There are also many specialized views that can be helpful if you suspect specific injuries, the most common of which are covered here.", attributes: info)
        let viewsToOrderShoulder = NSMutableAttributedString(string: "\n\nShoulder:", attributes: bold)
        let viewsToOrderShoulder2 = NSMutableAttributedString(string: "\n\u{2022}AP and lateral Y\n\u{2022}Special Views: Apical oblique view, helpful if shoulder dislocation is suspected.", attributes: info)
        let viewsToOrderElbow = NSMutableAttributedString(string: "\n\nElbow:", attributes: bold)
        let viewsToOrderElbow2 = NSMutableAttributedString(string: "\n\u{2022}AP and lateral\n\u{2022}Special Views: Radial Head/ Coyle's view, which gives the best visualization of the radial head, and thus is ideal if there is suspicion of a radial head fracture.", attributes: info)
        let viewsToOrderWrist = NSMutableAttributedString(string: "\n\nWrist:", attributes: bold)
        let viewsToOrderWrist2 = NSMutableAttributedString(string: "\n\u{2022}PA, oblique, and lateral\n\u{2022}Special Views: Scaphoid views, which can include a PA view with ulnar deviation, PA angled view, or a clenched fist view (the preferred views will vary by hospital). These are helpful for assessing injuries related to the scaphoid.", attributes: info)
        let viewsToOrderHand = NSMutableAttributedString(string: "\n\nHand:", attributes: bold)
        let viewsToOrderHand2 = NSMutableAttributedString(string: "\n\u{2022}PA and oblique\n\u{2022}Special Views: Ball-Catcher's view, ideal for visualizing the MCP joints.", attributes: info)
        let viewsToOrderHip = NSMutableAttributedString(string: "\n\nPelvis/ Hip:", attributes: bold)
        let viewsToOrderHip2 = NSMutableAttributedString(string: "\n\u{2022}AP, with lateral added if there is specific concern of a unilateral hip injury\n\u{2022}Special Views: Judet view, ideal for visualization of the acetabulum. Inlet view, which best visualizes the main pelvic ring.", attributes: info)
        let viewsToOrderKnee = NSMutableAttributedString(string: "\n\nKnee:", attributes: bold)
        let viewsToOrderKnee2 = NSMutableAttributedString(string: "\n\u{2022}AP and horizontal beam lateral\n\u{2022}Special Views: Skyline view, can catch patellar fractures that would otherwise be missed.", attributes: info)
        let viewsToOrderAnkle = NSMutableAttributedString(string: "\n\nAnkle:", attributes: bold)
        let viewsToOrderAnkle2 = NSMutableAttributedString(string: "\n\u{2022}AP mortice and lateral\n\u{2022}Axial calcaneal view is used to better visualize some calcaneal fractures.", attributes: info)
        let viewsToOrderFoot = NSMutableAttributedString(string: "\n\nFoot:", attributes: bold)
        let viewsToOrderFoot2 = NSMutableAttributedString(string: "\n\u{2022}AP, oblique, and lateral\n\u{2022}Special Views: Weightbearing AP and oblique views, which are ideal for picking up a Lisfranc injury.", attributes: info)
        let viewsToOrderCSpine = NSMutableAttributedString(string: "\n\nC-Spine:", attributes: bold)
        let viewsToOrderCSpine2 = NSMutableAttributedString(string: "\n\u{2022}Lateral and Long AP, with an AP Peg if there is suspicion of an injury to C1 or C2. It should also be noted that X-ray cannot rule out ligamentous injury of the C-Spine and should never be used to clear someone from a C-collar.\n\u{2022}No common special views", attributes: info)
        let viewsToOrderLSpine = NSMutableAttributedString(string: "\n\nL-Spine:", attributes: bold)
        let viewsToOrderLSpine2 = NSMutableAttributedString(string: "\n\u{2022}AP and lateral\n\u{2022}No common special views", attributes: info)
        let viewsToOrderChest = NSMutableAttributedString(string: "\n\nChest:", attributes: bold)
        let viewsToOrderChest2 = NSMutableAttributedString(string: "\n\u{2022}AP and lateral\n\u{2022}No common special views", attributes: info)
        let viewsToOrderAbdomen = NSMutableAttributedString(string: "\n\nAbdomen:", attributes: bold)
        let viewsToOrderAbdomen2 = NSMutableAttributedString(string: "\n\u{2022}AP. It should be noted that there are few indications for an abdominal X-Ray, most significantly bowel obstruction and free air under the diaphragm. For almost all other indications, CT or ultrasound will be the preferred tests of choice.\n\u{2022}No common special views", attributes: info)
        
        fractureDescriptionInfo.append(fractureDescriptionTitle)
        siteTitle.append(siteInfo)
        closedOpenTitle.append(closedOpenInfo)
        fragmentsTitle.append(fragmentsInfo)
        directionTitle.append(directionInfo)
        articularTitle.append(articularInfo)
        positionTitle.append(positionInfo)
        angulationTitle.append(angulationInfo)
        rotationTitle.append(rotationInfo)
        dislocationTitle.append(dislocationInfo)
        exampleTitle.append(exampleInfo)
        viewsToOrder2.append(viewsToOrderShoulder)
        viewsToOrder2.append(viewsToOrderShoulder2)
        viewsToOrder2.append(viewsToOrderElbow)
        viewsToOrder2.append(viewsToOrderElbow2)
        viewsToOrder2.append(viewsToOrderWrist)
        viewsToOrder2.append(viewsToOrderWrist2)
        viewsToOrder2.append(viewsToOrderHand)
        viewsToOrder2.append(viewsToOrderHand2)
        viewsToOrder2.append(viewsToOrderHip)
        viewsToOrder2.append(viewsToOrderHip2)
        viewsToOrder2.append(viewsToOrderKnee)
        viewsToOrder2.append(viewsToOrderKnee2)
        viewsToOrder2.append(viewsToOrderAnkle)
        viewsToOrder2.append(viewsToOrderAnkle2)
        viewsToOrder2.append(viewsToOrderFoot)
        viewsToOrder2.append(viewsToOrderFoot2)
        viewsToOrder2.append(viewsToOrderCSpine)
        viewsToOrder2.append(viewsToOrderCSpine2)
        viewsToOrder2.append(viewsToOrderLSpine)
        viewsToOrder2.append(viewsToOrderLSpine2)
        viewsToOrder2.append(viewsToOrderChest)
        viewsToOrder2.append(viewsToOrderChest2)
        viewsToOrder2.append(viewsToOrderAbdomen)
        viewsToOrder2.append(viewsToOrderAbdomen2)
        
        class menuPage{
            var content: [UIView] = []
            var height: CGFloat = 0
            var width: CGFloat = 0
            init (content: [UIView], height: CGFloat, width: CGFloat = UIScreen.main.bounds.width) {
                self.content = content
                self.height = height
                self.width = width
            }
        }
        
        
        siteImage.image = UIImage(named: "Site.jpg")
        closedOpenImage.image = UIImage(named: "Closed Open.jpg")
        fragmentsImage.image = UIImage(named: "Fragments.jpg")
        directionImage.image = UIImage(named: "Direction.jpg")
        articularImage.image = UIImage(named: "Articular.jpg")
        positionImage.image = UIImage(named: "Position.jpg")
        angulationImage.image = UIImage(named: "Angulation.jpg")
        rotationImage.image = UIImage(named: "Rotation.jpg")
        dislocationImage.image = UIImage(named: "Dislocation.jpg")
        exampleImage.image = UIImage(named: "Describing Fracture Example.jpg")
        densityImage.image = UIImage(named: "X-Ray Densities.jpg")
        bordersImage.image = UIImage(named: "Borders.jpg")
        typesOfFracturesImage.image = UIImage(named: "Types of Fractures.jpg")
        twoViewsImage.image = UIImage(named: "Two Views.jpg")
        
        let labelDict = [
            contactLabel : contact,
            aboutLabel : about,
            basicsLabel : basics1,
            basicsLabel2 : basics2,
            spottingFractureLabel : spottingFracture,
            viewsToOrderLabel : viewsToOrder,
            viewsToOrder2Label : viewsToOrder2,
            fractureDescriptionLabel : fractureDescriptionInfo,
            siteLabel : siteTitle,
            closedOpenLabel : closedOpenTitle,
            fragmentsLabel : fragmentsTitle,
            directionLabel : directionTitle,
            articularLabel : articularTitle,
            positionLabel : positionTitle,
            angulationLabel : angulationTitle,
            rotationLabel : rotationTitle,
            dislocationLabel : dislocationTitle,
            exampleLabel : exampleTitle
        ]
        
        let labelArray = [contactLabel, aboutLabel, fractureDescriptionLabel, siteLabel, closedOpenLabel, fragmentsLabel, directionLabel, articularLabel, positionLabel, angulationLabel, rotationLabel, dislocationLabel, exampleLabel, viewsToOrderLabel, viewsToOrder2Label, basicsLabel, basicsLabel2, spottingFractureLabel]
        
        for label in labelArray {
            label.attributedText = labelDict[label]
            label.textColor = .white
            label.backgroundColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0)
            label.textAlignment = .left
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.numberOfLines = 0
        }
        
        emailButton.setTitle("Let us know!", for: .normal)
        emailButton.titleLabel?.font = titleFont
        emailButton.backgroundColor = UIColor(red:0.19, green:0.58, blue:0.36, alpha:1.0)
        emailButton.setTitleColor(.white, for: .normal)
        emailButton.layer.cornerRadius = 15
        emailButton.addTarget(self, action: #selector(emailButtonPressed), for: .touchUpInside)

        let standardWidth = UIScreen.main.bounds.width*0.9
        let subviewsWidthDict = [
            contactLabel : standardWidth,
            aboutLabel : standardWidth,
            emailButton : 160,
            basicsLabel : standardWidth,
            basicsLabel2 : standardWidth,
            spottingFractureLabel : standardWidth,
            fractureDescriptionLabel : standardWidth,
            siteLabel : standardWidth,
            closedOpenLabel : standardWidth,
            fragmentsLabel : standardWidth,
            directionLabel : standardWidth,
            articularLabel : standardWidth,
            positionLabel : standardWidth,
            angulationLabel : standardWidth,
            rotationLabel : standardWidth,
            dislocationLabel : standardWidth,
            exampleLabel : standardWidth,
            siteImage : standardWidth,
            closedOpenImage : standardWidth,
            fragmentsImage : standardWidth,
            directionImage : standardWidth,
            articularImage : standardWidth,
            positionImage : standardWidth,
            angulationImage : standardWidth,
            rotationImage : standardWidth,
            dislocationImage : standardWidth,
            exampleImage : standardWidth,
            viewsToOrderLabel : standardWidth,
            viewsToOrder2Label : standardWidth,
            densityImage : standardWidth,
            bordersImage : standardWidth,
            typesOfFracturesImage : standardWidth,
            twoViewsImage : standardWidth
        ]
        
        let subviewsDict = [
            "CONTACT" : [contactLabel, emailButton],
            "ABOUT" : [aboutLabel],
            "Basics of Plain Films" : [basicsLabel, densityImage, basicsLabel2, bordersImage],
            "Spotting a Fracture" : [spottingFractureLabel, typesOfFracturesImage],
            "Describing Fractures" : [fractureDescriptionLabel, closedOpenLabel, closedOpenImage, directionLabel, directionImage, articularLabel, articularImage, siteLabel, siteImage, fragmentsLabel, fragmentsImage, positionLabel, positionImage, angulationLabel, angulationImage, rotationLabel, rotationImage, dislocationLabel, dislocationImage, exampleLabel, exampleImage],
            "What Views To Order" : [viewsToOrderLabel, twoViewsImage, viewsToOrder2Label]
        ]
        
        for item in subviewsDict[menuOption]!{
            item.translatesAutoresizingMaskIntoConstraints = false
            self.infoScroll.addSubview(item)
        }
        
        centerFirstObject(gap: 20, object: subviewsDict[menuOption]![0], width: subviewsWidthDict[subviewsDict[menuOption]![0]]!)
        if subviewsDict[menuOption]!.count >= 2{
            for n in 1...((subviewsDict[menuOption]?.count)!-1){
                centerBelowObject(gap: 15, object1: subviewsDict[menuOption]![n-1], object2: subviewsDict[menuOption]![n], width: subviewsWidthDict[subviewsDict[menuOption]![n]]!)
            }
        }
        let imageHeight = UIScreen.main.bounds.width/2+20
        let contentHeight: CGFloat = 30000/standardWidth + 20
        
        let scrollHeightDict = [
            "CONTACT" : 500,
            "ABOUT" : 500,
            "Basics of Plain Films" : 2*imageHeight + 3*contentHeight + 70,
            "Spotting a Fracture" : 620, //650
            "Describing Fractures" : 10*imageHeight + 13*contentHeight + 90,
            "What Views To Order" : imageHeight + 17*contentHeight + 290
        ]
        
        self.title = menuOption
        
        infoScroll.contentSize = CGSize(width: infoScroll.contentSize.width, height: scrollHeightDict[menuOption]!)
    }
    
    @objc func emailButtonPressed() {
        let email = "hello@coremedicalapps.com"
        if let url = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(url)
        }
    }

    func centerFirstObject(gap: CGFloat, object: UIView, width: CGFloat){
        object.centerXAnchor.constraint(equalTo: object.superview!.centerXAnchor).isActive = true
        object.topAnchor.constraint(equalTo: object.superview!.topAnchor, constant: gap).isActive = true
        object.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func centerBelowObject(gap: CGFloat, object1: UIView, object2: UIView, width: CGFloat) {
        if let image = object2 as? UIImageView{
            image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
            image.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width)/2).isActive = true
        }
        else{
            object2.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let button = object2 as? UIButton{
            button.heightAnchor.constraint(equalToConstant: 55).isActive = true
        }
        
        object2.centerXAnchor.constraint(equalTo: object2.superview!.centerXAnchor).isActive = true
        object2.topAnchor.constraint(equalTo: object1.bottomAnchor, constant: gap).isActive = true
    }
    
    func setImageConstraints(image: UIView){
        image.centerXAnchor.constraint(equalTo: image.superview!.centerXAnchor).isActive = true
        image.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        image.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2).isActive = true
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
