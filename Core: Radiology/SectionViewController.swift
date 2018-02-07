//
//  SectionViewController.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 10/30/17.
//  Copyright © 2017 Core Medical Apps, LLC. All rights reserved.
//

import UIKit

class SectionViewController: UIViewController, UIScrollViewDelegate {

// SET UP VARIABLES
    var viewJustLoaded: Bool = true
    
    var anatomy = AnatomyView(title: "")
    var injury = InjuryView(views: [], injuryImages: [], injuryImagesMarked: [], injuryMasterTitle: "", injuryAttribution: [], overviewText: "", findingsText: "", managementText: "", otherTitle: "", otherText: "")
    
    // Name of injury, to be used only if this view is displaying an injury
    var injuryName: String = ""
    var section: Bool = false
    
    var currentInjury: InjuryView = InjuryView(views: [], injuryImages: [], injuryImagesMarked: [], injuryMasterTitle: "", injuryAttribution: [], overviewText: "", findingsText: "", managementText: "", otherTitle: "", otherText: "")
    
    var currentSection = ""
    var currentView: Int = 0
    var currentPage: CGFloat = 0
    var currentPageInt: Int = 0
    
    var imageArray: [UIImageView] = []
    var stepArray: [UIImageView] = []
    var stepDescriptionArray: [UIView] = []
    var anatomyOverlayArray: [UIImageView] = []
    var injuryArray: [UIImageView] = []
    var injuryAnatomyOverlayArray: [UIImageView] = []
    var anatomyComponentImageArray: [UIImageView] = []
    var anatomyComponentLabelArray: [UIImageView] = []
    var anatomyComponentPointerArray: [UIImageView] = []

    var xOffset: CGFloat = 0
    var yOffset: CGFloat = 0
    var pictureHeight: CGFloat = 0
    var pictureWidth: CGFloat = 0
    let pageWidth = UIScreen.main.bounds.width
    
    let defaults = UserDefaults.standard
    let viewButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
    
    @IBOutlet var changeViewList: UIView!
    @IBOutlet var changeViewButton1: UIButton!
    @IBOutlet var changeViewButton2: UIButton!
    @IBOutlet var changeViewButton3: UIButton!
    @IBOutlet var changeViewButton4: UIButton!
    @IBOutlet var changeViewButton5: UIButton!
    var changeViewButtonArray: [UIButton] = []
    
    @IBAction func changeViewButton1Pressed(_ sender: Any) {
        viewChanged(buttonNumber: 0)
    }
    @IBAction func changeViewButton2Pressed(_ sender: Any) {
        viewChanged(buttonNumber: 1)
    }
    @IBAction func changeViewButton3Pressed(_ sender: Any) {
        viewChanged(buttonNumber: 2)
    }
    @IBAction func changeViewButton4Pressed(_ sender: Any) {
        viewChanged(buttonNumber: 3)
    }
    @IBAction func changeViewButton5Pressed(_ sender: Any) {
        viewChanged(buttonNumber: 4)
    }
    
    @IBOutlet var injuryLabel: UILabel!
    @IBOutlet var injurySwitch: UISwitch!
    @IBAction func injurySwitchPressed(_ sender: Any) {
        if injuryLabel.text == "Injury"{
            injuryLabel.text = "Normal"
            injury.normalToggle = true
            anatomy.anatomyOverlay = false
        }
        else{
            injuryLabel.text = "Injury"
            injury.normalToggle = false
            anatomy.anatomyOverlay = false
        }
        if injuryText.isHidden == false{
            hideInjuryText()
        }
        showHideNormalImage()
    }
    @IBOutlet var buttonView: UIView!
    @IBOutlet var indicatorView: UIView!
    @IBOutlet var headerView: UIView!
    @IBOutlet var injuryText: UITextView!
    @IBOutlet var rightArrowButton: UIButton!
    @IBAction func rightArrowButtonPressed(_ sender: Any) {
        let pageToReset = anatomy.currentStep
        anatomy.currentStep += 1
        arrowTapped(newXValue: UIScreen.main.bounds.width * CGFloat(anatomy.currentStep-1) + UIScreen.main.bounds.width)
        if anatomy.anatomyOverlay == true{
            let when = DispatchTime.now() + 0.3
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.resetImageOnScroll(pageToReset: pageToReset)
            }
            anatomy.anatomyOverlay = false
        }
    }
    @IBOutlet var leftArrowButton: UIButton!
    @IBAction func leftArrowButtonPressed(_ sender: Any) {
        let pageToReset = anatomy.currentStep
        anatomy.currentStep -= 1
        arrowTapped(newXValue: UIScreen.main.bounds.width * CGFloat(anatomy.currentStep+1) - UIScreen.main.bounds.width)
        if anatomy.anatomyOverlay == true{
            let when = DispatchTime.now() + 0.3
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.resetImageOnScroll(pageToReset: pageToReset)
            }
            anatomy.anatomyOverlay = false
        }
    }
    @IBOutlet var sectionScroll: UIScrollView!
    @IBOutlet var infoButton: UIButton!
    @IBAction func infoButtonPressed(_ sender: Any) {
        hideAttribution()
    }
    @IBOutlet var hazeButton: UIButton!
    @IBAction func hazeButtonPressed(_ sender: Any) {
        hideAttribution()
    }
    @IBOutlet var contentView: UIView!
    @IBOutlet var pageIndicator: UIPageControl!

    @IBOutlet var anatomyButton: UIButton!
    @IBAction func anatomyButtonPressed(_ sender: Any) {
        buttonBounce(anatomyButton)
        //showHideAnatomyOverlay()
        if anatomy.anatomyOverlay == false{
            showAnatomy()
        }
        else{
            hideAnatomy()
        }
        anatomy.anatomyOverlay = !anatomy.anatomyOverlay

        if injuryText.isHidden == false{
            hideInjuryText()
        }
    }
    @IBOutlet var injuriesButton: UIButton!
    @IBAction func injuriesButtonPressed(_ sender: Any) {
        showInjuries()
    }
    @IBOutlet var attributionButton: UIButton!
    @IBAction func attributionButtonPressed(_ sender: Any) {
        hazeButton.isHidden = false
        infoButton.isHidden = false
        
        buttonBounce(attributionButton)
        let showView = CGAffineTransform(translationX: 0, y: -200)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.infoButton.transform = showView
                        self.hazeButton.alpha = 1.0
        })
    }

    let titleFont = UIFont(name: "HelveticaNeue-Bold", size: 17)
    let infoFont = UIFont(name: "HelveticaNeue-Light", size: 17)
    let subTitleFont = UIFont(name: "HelveticaNeue-Bold", size: 12)
    
    var anatomyDict: [String: AnatomyView] = [:]
    var injuryDict: [String: InjuryView] = [:]
    
    var contentHeight: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadImages = LoadImages()
        
        switch anatomy.title{
        case "Shoulder":
            loadImages.shoulder()
        case "Elbow":
            loadImages.elbow()
        case "Wrist":
            loadImages.wrist()
        case "Hand":
            loadImages.hand()
        case "Hip":
            loadImages.hip()
        case "Knee":
            loadImages.knee()
        case "Ankle":
            loadImages.ankle()
        case "Foot":
            loadImages.foot()
        case "C Spine":
            loadImages.cSpine()
        case "L Spine":
            loadImages.lSpine()
        case "Chest":
            loadImages.chest()
        case "Abdomen":
            loadImages.abdomen()
        default:
            print("Current section (", currentSection, ") not listed")
        }
        
        viewButton.setBackgroundImage(UIImage(named: "MoreViews"), for: .normal)
        viewButton.addTarget(self, action:#selector(selectView), for:.touchUpInside)
        viewButton.frame = CGRect.init(x: UIScreen.main.bounds.width-15, y: 0, width: 25, height: 25)
        let barButton = UIBarButtonItem.init(customView: viewButton)
        self.navigationItem.rightBarButtonItem = barButton
 
        // Customize the "haze button" that grays out the background when attribution information or injury information is shown
        hazeButton.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        hazeButton.isHidden = true
        self.hazeButton.alpha = 0.0
        
        // Customize the buttons
        infoButton.layer.cornerRadius = 15.0
        infoButton.isHidden = true
        infoButton.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        infoButton.titleLabel?.textAlignment = NSTextAlignment.center
        injuryText.layer.cornerRadius = 15.0
        injuryText.isHidden = true
        
        // Insets (top, left, bottom, right)
        injuryText.textContainerInset = UIEdgeInsetsMake(15, 10, 15, 10)
        
        rightArrowButton.layer.cornerRadius = 22.0
        leftArrowButton.layer.cornerRadius = 22.0
        rightArrowButton.isHidden = true
        leftArrowButton.isHidden = true
        
        attributionButton.layer.cornerRadius = 15.0
        attributionButton.adjustsImageWhenHighlighted = false
        injurySwitch.layer.cornerRadius = 16.0
 
        // Set navigation bar title font and color
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Bold", size: 20)!, NSAttributedStringKey.foregroundColor : UIColor.white]
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()

        let backItem = UIBarButtonItem()
        backItem.title = " "
        navigationItem.backBarButtonItem = backItem
        
        // Change injuries button image to normal button image if already in injury mode
        if anatomy.section == true{
            injuriesButton.setImage(UIImage(named: "Injuries.jpg"), for: .normal)
        }
        else{
            injuriesButton.setImage(UIImage(named: "Info.jpg"), for: .normal)
        }
        
        // Reset anatomy toggle
        anatomy.anatomyOverlay = false
        currentView = 0
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        injuryText.setContentOffset(CGPoint.zero, animated: false)
        
        contentHeight = contentView.frame.size.height
        
        // Set up scrollview with correct images and labels the first time the page loads
        if viewJustLoaded == true{
            setFrameSize()
            if anatomy.section == true{
                loadSteps()
            }
            else{
                loadInjuries()
            }
            viewJustLoaded = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setFrameSize(){
        let pageWidth = UIScreen.main.bounds.width
        
        //Change picture height if it's going to be used on an iPad
        if pageWidth >= contentHeight/1.4{
            pictureHeight = contentHeight
            pictureWidth = contentHeight/1.4
        }
        else{
            pictureHeight = pageWidth*1.4
            pictureWidth = pageWidth
        }
        xOffset = (pageWidth-pictureWidth)/2
        yOffset = (contentHeight-pictureHeight)/2
    }
    
    func loadSteps(){
        //Runs the first time a set of normal images + steps is loaded (eg. AP shoulder)
        for subview in sectionScroll.subviews{
            subview.removeFromSuperview()
        }
        
        anatomy.currentStep = 0
        sectionScroll.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        imageArray = []
        stepArray = []
        stepDescriptionArray = []
        anatomyOverlayArray = []
        
        //anatomy = anatomyDict[currentSection]!
        
        anatomy.attribution.append(anatomy.views[currentView].attribution)
        anatomy.steps.append(anatomy.views[currentView].steps)
        anatomy.viewNames.append(anatomy.views[currentView].viewName)
        
        anatomy.numberOfPages = anatomy.views[currentView].steps.count + 1
        
        self.navigationItem.titleView = setTitle(title: anatomy.views[currentView].sectionName, subtitle: anatomy.views[currentView].viewName)
        
        for n in 0...anatomy.numberOfPages-1{
            imageArray.insert(UIImageView(frame: CGRect(x:pageWidth*CGFloat(n) + xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: n)
            imageArray[n].image = anatomy.views[currentView].normalImage
            imageArray[n].tag = n
        }
        
        for n in 0...anatomy.numberOfPages-1{
            anatomyOverlayArray.insert(UIImageView(frame: CGRect(x:pageWidth*CGFloat(n) + xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: n)
            anatomyOverlayArray[n].image = anatomy.views[currentView].markedImage
            anatomyOverlayArray[n].tag = 300
        }
        
        for n in 0...anatomy.numberOfPages-2{
            stepArray.insert(UIImageView(frame: CGRect(x:pageWidth*CGFloat(n+1) + xOffset, y:yOffset,width:pictureWidth, height:pictureHeight)), at: n)
            stepArray[n].tag = n+101
            // Normal image tag = 0...15 depending on position
            // Step image tag = 101...115 depending on specific step
            // Step text overlay = 201... 215 (if it exists)
            // Anatomy overlay tag = 300
            // Injury anatomy overlay tag = 301
            // Injury image = 400
            // Anatomy component image tag = 500...599
            // Anatomy component label tag = 600...699
            stepArray[n].image = anatomy.views[currentView].steps[n]
            
            //Add step description array info
            let descriptionView = UIView()
            if anatomy.views[currentView].descriptionAtBottom == false{
                descriptionView.frame = CGRect(x:pageWidth*CGFloat(n+1) + xOffset, y:0, width:pictureWidth, height:pictureHeight*0.18)
            }
            else{
                descriptionView.frame = CGRect(x:pageWidth*CGFloat(n+1) + (pageWidth-pictureWidth)/2, y:yOffset+pictureHeight*0.82, width:pictureWidth, height:pictureHeight*0.18)
            }
            descriptionView.backgroundColor = UIColor(red:0.86, green:0.86, blue:0.86, alpha:0.85)
            stepDescriptionArray.insert(descriptionView, at: n)
            stepDescriptionArray[n].tag = n+201
        }
        
        for image in imageArray{
            self.sectionScroll.addSubview(image)
        }
        
        for step in stepArray{
            self.sectionScroll.addSubview(step)
        }
        
        for n in 0...stepDescriptionArray.count-1{
            let numberSubview = UILabel(frame: CGRect(x:0, y:0, width:pictureWidth*0.2, height:pictureHeight*0.16))
            let numberToDisplay = String(n+1)
            numberSubview.text = numberToDisplay + "."
            numberSubview.backgroundColor = .clear
            if n+1 >= 10{
                numberSubview.font = UIFont(name: "HelveticaNeue-Bold", size: pictureHeight * 0.10)
            }
            else{
                numberSubview.font = UIFont(name: "HelveticaNeue-Bold", size: pictureHeight * 0.12)
            }
            numberSubview.textColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0)
            numberSubview.textAlignment = .center
            stepDescriptionArray[n].addSubview(numberSubview)
            
            let textSubview = UILabel(frame: CGRect(x:pictureWidth*0.2, y:0, width:pictureWidth*0.77, height:pictureHeight*0.18))
            textSubview.text = anatomy.views[currentView].stepDescriptions[n]
            textSubview.backgroundColor = .clear
            textSubview.font = UIFont(name: "HelveticaNeue-Bold", size: pictureHeight * 0.035)
            textSubview.textColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0)
            textSubview.numberOfLines = 0
            textSubview.textAlignment = .right
            stepDescriptionArray[n].addSubview(textSubview)
            
            self.sectionScroll.addSubview(stepDescriptionArray[n])
        }
        
        let cgNumberOfPages = CGFloat (anatomy.numberOfPages)
        
        self.sectionScroll.contentSize = CGSize(width:pageWidth * cgNumberOfPages, height:self.sectionScroll.frame.height)
        self.sectionScroll.delegate = self
        
        anatomy.currentStep = 0
        injurySwitch.isHidden = true
        injuryLabel.isHidden = true
        
        showDirectionArrows()
        updatePageIndicator()
        updateAttribution()
    }
    
    func showAnatomy(){
        anatomyComponentImageArray = []
        anatomyComponentLabelArray = []
        anatomyComponentPointerArray = []
        
        var anatomyComponentImages: [UIImage] = []
        var anatomyComponentLabels: [UIImage] = []
        var anatomyComponentPointers: [UIImage] = []
        
        var componentIDs: [Int] = []
        let transitionTime = 0.4

        // Set up components
        var componentArray: [MarkedAnatomyComponent] = []
        if anatomy.section == true{
            componentArray = anatomy.views[currentView].markedImageByComponents
        }
        else{
            componentArray = injury.views[currentView].markedImageByComponents
        }
        if componentArray.count != 0{
            for component in componentArray{
                if component.imageID == 0{
                    anatomyComponentImages.append(component.componentImage)
                }
                else if !componentIDs.contains(component.imageID) {
                    anatomyComponentImages.append(component.componentImage)
                    componentIDs.append(component.imageID)
                }
                anatomyComponentLabels.append(component.componentLabel)
                anatomyComponentPointers.append(component.componentPointer)
            }
            
            for n in 0...anatomyComponentImages.count-1{
                anatomyComponentImageArray.insert(UIImageView(frame: CGRect(x:pageWidth*CGFloat(anatomy.currentStep) + xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: n)
                anatomyComponentImageArray[n].image = anatomyComponentImages[n]
                anatomyComponentImageArray[n].tag = 500+n
            }
            for n in 0...anatomyComponentLabels.count-1{
                anatomyComponentLabelArray.insert(UIImageView(frame: CGRect(x:pageWidth*CGFloat(anatomy.currentStep) + xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: n)
                anatomyComponentLabelArray[n].image = anatomyComponentLabels[n]
                anatomyComponentLabelArray[n].tag = 600+n
            }
            for n in 0...anatomyComponentPointers.count-1{
                anatomyComponentPointerArray.insert(UIImageView(frame: CGRect(x:pageWidth*CGFloat(anatomy.currentStep) + xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: n)
                anatomyComponentPointerArray[n].image = anatomyComponentPointers[n]
                anatomyComponentPointerArray[n].tag = 700+n
            }
        }
        
        if anatomy.section == true || injury.normalToggle == true{
            sectionScroll.viewWithTag(anatomy.currentStep+100)?.removeFromSuperview()
            sectionScroll.viewWithTag(anatomy.currentStep+200)?.removeFromSuperview()
            
            if anatomyComponentLabelArray.count != 0{
                UIView.transition(with: self.view, duration: transitionTime, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {
                    for image in self.anatomyComponentImageArray{
                        self.sectionScroll.addSubview(image)
                    }
                    for label in self.anatomyComponentLabelArray{
                        self.sectionScroll.addSubview(label)
                    }
                    for pointer in self.anatomyComponentPointerArray{
                        self.sectionScroll.addSubview(pointer)
                    }
                })
            }
            else{
                UIView.transition(with: self.view, duration: transitionTime, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {
                    self.sectionScroll.addSubview(self.anatomyOverlayArray[self.anatomy.currentStep])
                })
            }
        }
        else{
            UIView.transition(with: self.view, duration: transitionTime, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {self.sectionScroll.addSubview(self.injuryAnatomyOverlayArray[0])})
        }
    }
    
    func hideAnatomy(){
        let transitionTime = 0.4
        UIView.transition(with: self.view, duration: transitionTime, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {
            self.sectionScroll.viewWithTag(300)?.removeFromSuperview()
            self.sectionScroll.viewWithTag(301)?.removeFromSuperview()
            if self.anatomyComponentLabelArray.count >= 1{
                for n in 0...self.anatomyComponentLabelArray.count-1{
                    self.sectionScroll.viewWithTag(n+500)?.removeFromSuperview()
                    self.sectionScroll.viewWithTag(n+600)?.removeFromSuperview()
                    self.sectionScroll.viewWithTag(n+700)?.removeFromSuperview()
                }
            }
        })
        if anatomy.section == true{
            UIView.transition(with: self.view, duration: transitionTime, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {
                if self.anatomy.currentStep >= 1{
                    self.sectionScroll.addSubview(self.stepArray[self.anatomy.currentStep-1])
                    self.sectionScroll.addSubview(self.stepDescriptionArray[self.anatomy.currentStep-1])
                }
            })
        }
    }
    
    func resetImageOnScroll(pageToReset: Int){
        if self.anatomyComponentLabelArray.count >= 1{
            for n in 0...self.anatomyComponentLabelArray.count-1{
                self.sectionScroll.viewWithTag(n+500)?.removeFromSuperview()
                self.sectionScroll.viewWithTag(n+600)?.removeFromSuperview()
                self.sectionScroll.viewWithTag(n+700)?.removeFromSuperview()
            }
        }
        
        sectionScroll.viewWithTag(300)?.removeFromSuperview()
        sectionScroll.viewWithTag(301)?.removeFromSuperview()
        
        if pageToReset >= 1{
            sectionScroll.addSubview(stepArray[pageToReset-1])
            sectionScroll.addSubview(stepDescriptionArray[pageToReset-1])
        }
    }
    
    func updatePageIndicator(){
        if anatomy.section == true{
            pageIndicator.numberOfPages = anatomy.numberOfPages
            pageIndicator.currentPage = anatomy.currentStep
        }
        else{
            pageIndicator.numberOfPages = 1
        }
    }
    
    func updateAttribution(){
        if anatomy.section == true{
            infoButton.setTitle(anatomy.views[currentView].attribution, for: .normal)
        }
        else if injury.normalToggle == true{
            infoButton.setTitle(injury.views[currentView].attribution, for: .normal)
        }
        else{
            infoButton.setTitle(injury.injuryAttribution[currentView], for: .normal)
        }
    }
    
    func loadInjuries(){
        for subview in sectionScroll.subviews{
            subview.removeFromSuperview()
        }
        
        injury.setUpTitles()
        injury.normalToggle = false
        
        imageArray = []
        anatomyOverlayArray = []
        injuryArray = []
        injuryAnatomyOverlayArray = []
        
        imageArray.insert(UIImageView(frame: CGRect(x:xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: 0)
        imageArray[0].tag = 0
        imageArray[0].image = injury.views[currentView].normalImage

        anatomyOverlayArray.insert(UIImageView(frame: CGRect(x:xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: 0)
        anatomyOverlayArray[0].tag = 300
        anatomyOverlayArray[0].image = injury.views[currentView].markedImage

        injuryArray.insert(UIImageView(frame: CGRect(x:xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: 0)
        injuryArray[0].tag = 400
        injuryArray[0].image = injury.injuryImages[currentView]
        
        injuryAnatomyOverlayArray.insert(UIImageView(frame: CGRect(x:xOffset, y:yOffset, width:pictureWidth, height:pictureHeight)), at: 0)
        injuryAnatomyOverlayArray[0].tag = 301
        injuryAnatomyOverlayArray[0].image = injury.injuryImagesMarked[currentView]
        
        sectionScroll.addSubview(injuryArray[0])

        //Adjust titles for smaller screens
        if UIScreen.main.bounds.width <= 320 && injury.shortInjuryTitle.count != 0{
            self.navigationItem.titleView = setTitle(title: injury.shortInjuryTitle[currentView], subtitle: injury.views[currentView].viewName)
        }
        else{
            self.navigationItem.titleView = setTitle(title: injury.injuryTitle[currentView], subtitle: injury.views[currentView].viewName)
        }
        
        injurySwitch.setOn(false, animated: false)
        injuryLabel.text = "Injury"
        
        let bold = [NSAttributedStringKey.font : titleFont as Any]
        let info = [NSAttributedStringKey.font : infoFont as Any]
        
        // Establish strings for generic injuries
        let injuryInfo = NSMutableAttributedString(string: "", attributes:bold)
        
        let overviewTitle = "Presentation:\n"
        let overviewText = injury.overviewText
        let findingsTitle = "\n\nX-Ray Findings:\n"
        let findingsText = injury.findingsText
        let managementTitle = "\n\nManagement:\n"
        let managementText = injury.managementText
        let otherTitle = injury.otherTitle
        let otherText = injury.otherText
        
        let title1 = NSMutableAttributedString(string:overviewTitle, attributes:bold)
        let overview = NSMutableAttributedString(string:overviewText, attributes:info)
        let title2 = NSMutableAttributedString(string:findingsTitle, attributes:bold)
        let findings = NSMutableAttributedString(string:findingsText, attributes:info)
        let title3 = NSMutableAttributedString(string:managementTitle, attributes: bold)
        let management = NSMutableAttributedString(string: managementText, attributes: info)
        let title4 = NSMutableAttributedString(string: otherTitle, attributes: bold)
        let other = NSMutableAttributedString(string: otherText, attributes: info)
        
        injuryInfo.append(title1)
        injuryInfo.append(overview)
        injuryInfo.append(title2)
        injuryInfo.append(findings)
        injuryInfo.append(title3)
        injuryInfo.append(management)
        injuryInfo.append(title4)
        injuryInfo.append(other)
        
        injuryText.attributedText = injuryInfo

        showDirectionArrows()
        updatePageIndicator()
        updateAttribution()
    }
    
    func showHideNormalImage(){
        if injury.normalToggle == false{
            UIView.transition(with: self.view, duration: 0.4, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {self.sectionScroll.addSubview(self.injuryArray[0])})
            if UIScreen.main.bounds.width <= 320 && injury.shortInjuryTitle.count != 0{
                self.navigationItem.titleView = setTitle(title: injury.shortInjuryTitle[currentView], subtitle: injury.views[currentView].viewName)
            }
            else{
                self.navigationItem.titleView = setTitle(title: injury.injuryTitle[currentView], subtitle: injury.views[currentView].viewName)
            }
        }
        else{
            self.navigationItem.titleView = setTitle(title: "Normal " + injury.views[currentView].sectionName, subtitle: injury.views[currentView].viewName)
            UIView.transition(with: self.view, duration: 0.4, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {self.sectionScroll.addSubview(self.imageArray[0])})
        }
        updateAttribution()
    }
    
    func setTitle(title:String, subtitle:String) -> UIView {
        let titleLabel = UILabel(frame: CGRect(x: 0, y: -2, width: 0, height: 0))
        
        titleLabel.backgroundColor = UIColor.clear
        titleLabel.textColor = UIColor.white
        titleLabel.font = titleFont
        titleLabel.text = title
        titleLabel.sizeToFit()
        
        let subtitleLabel = UILabel(frame: CGRect(x: 0, y: 18, width: 0, height: 0))
        subtitleLabel.backgroundColor = UIColor.clear
        subtitleLabel.textColor = UIColor.white
        subtitleLabel.font = subTitleFont
        subtitleLabel.text = subtitle
        subtitleLabel.sizeToFit()
        
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: max(titleLabel.frame.size.width, subtitleLabel.frame.size.width), height: 30))
        titleView.addSubview(titleLabel)
        titleView.addSubview(subtitleLabel)
        
        let widthDiff = subtitleLabel.frame.size.width - titleLabel.frame.size.width
        
        if widthDiff < 0 {
            let newX = widthDiff / 2
            subtitleLabel.frame.origin.x = abs(newX)
        } else {
            let newX = widthDiff / 2
            titleLabel.frame.origin.x = newX
        }
        return titleView
    }
    
    func arrowTapped(newXValue: CGFloat){
        sectionScroll.setContentOffset(CGPoint(x: newXValue, y: 0), animated: true)
        self.injury.normalToggle = false
        showDirectionArrows()
        updatePageIndicator()
    }
    
    func showDirectionArrows(){
        // Hide or show direction arrows
        if anatomy.section == false{
            self.rightArrowButton.isHidden = true
            self.leftArrowButton.isHidden = true
        }
        else{
            if (anatomy.currentStep+1) == anatomy.numberOfPages || anatomy.numberOfPages == 1{
                self.rightArrowButton.isHidden = true
            }
            else{
                rightArrowButton.isHidden = false
                rightArrowButton.alpha = 0.4
            }
            
            if anatomy.currentStep == 0{
                self.leftArrowButton.isHidden = true
            }
            else {
                leftArrowButton.isHidden = false
                leftArrowButton.alpha = 0.4
            }
        }
    }
    
    //Store the current page when the user starts scrolling. This will be compared to the final page indicator in scrollViewDidEndDecelerating to see if the images need to be updated.
    func scrollViewWillBeginDragging(_ sectionScroll: UIScrollView) {
        let pageWidth = UIScreen.main.bounds.width
        // Test the offset and calculate the current page after scrolling ends
        currentPage = floor((sectionScroll.contentOffset.x-pageWidth/2)/pageWidth)+1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        changeViewList.isHidden = true
        let changeViewButtonArray: [UIButton] = [changeViewButton1, changeViewButton2, changeViewButton3, changeViewButton4, changeViewButton5]
        for item in changeViewButtonArray{
            item.isHidden = true
        }
    }
    
    // Trigger the label, scroll arrows, and page indicator to be updated when the user scrolls, and reset images
    func scrollViewDidEndDecelerating(_ sectionScroll: UIScrollView){
        let pageWidth = UIScreen.main.bounds.width
        // Set previousPage = to the page before scrolling happened, then recalculate currentPage
        let previousPage = currentPage
        currentPage = floor((sectionScroll.contentOffset.x-pageWidth/2)/pageWidth)+1
        
        // Compare current page to previous page
        if previousPage != currentPage{
            if anatomy.anatomyOverlay == true{
                resetImageOnScroll(pageToReset: Int(previousPage))
            }
            anatomy.anatomyOverlay = false
            injury.normalToggle = false
            anatomy.currentStep = Int(currentPage)
            updatePageIndicator()
            showDirectionArrows()
        }
    }
    
    func buttonBounce(_ targetButton: UIButton){
        UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseInOut],
                       animations: {
                        targetButton.transform = CGAffineTransform(translationX: 0, y: 4)
        })
        UIView.animate(withDuration: 0.2, delay: 0.2, options: [.curveEaseInOut],
                       animations: {
                        targetButton.transform = CGAffineTransform(translationX: 0, y: 0)
        })
    }
    
    // Make the popover retreat after it's clicked
    func hideAttribution(){
        
        let hideView = CGAffineTransform(translationX: 0, y: 0)

        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.infoButton.transform = hideView
                        self.hazeButton.alpha = 0.0
        })

        // Build in pause to allow items to disappear
        let when = DispatchTime.now() + 0.5
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.hazeButton.isHidden = true
            self.infoButton.isHidden = true
        }
    }
    
    func showInjuryText(){
        injuryText.isHidden = false
        injuryText.textColor = UIColor(red:0.18, green:0.18, blue:0.18, alpha:1.0)

        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.injuryText.frame.size.width += 50
                        self.injuryText.frame.size.height += 50
                        self.injuryText.frame.origin.x -= 25
                        self.injuryText.frame.origin.y -= 25
                        self.injuryText.alpha = 1.0
        })
        // Build in pause to allow items to disappear
        let when = DispatchTime.now() + 0.3
        DispatchQueue.main.asyncAfter(deadline: when) {
            UIView.transition(with: self.injuryText, duration: 0.2, options: .transitionCrossDissolve, animations: { self.injuryText.textColor = .white })
        }
    }
    
    func hideInjuryText(){
        UIView.transition(with: injuryText, duration: 0.2, options: .transitionCrossDissolve, animations: { self.injuryText.textColor = UIColor(red:0.12, green:0.15, blue:0.23, alpha:1.0) })
        
        UIView.animate(withDuration: 0.3, delay: 0.2, options: [.curveEaseInOut],
                       animations: {
                        self.injuryText.frame.size.width -= 50
                        self.injuryText.frame.size.height -= 50
                        self.injuryText.frame.origin.x += 25
                        self.injuryText.frame.origin.y += 25
                        self.injuryText.alpha = 0.0
        })
        // Build in pause to allow items to disappear
        let when = DispatchTime.now() + 0.5
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.injuryText.isHidden = true
        }
    }
    
    func showInjuries(){
        buttonBounce(injuriesButton)
        
        if anatomy.section == true{
            // Launch table of injuries
            let injuryVC = storyboard?.instantiateViewController(withIdentifier: "InjuriesViewController") as! InjuriesTableViewController
            injuryVC.anatomy = anatomy
            injuryVC.anatomy.currentStep = anatomy.currentStep
            injuryVC.currentView = currentView
            navigationController?.pushViewController(injuryVC, animated: true)
        }
        // If you're in injury mode (info button)
        else{
            if injuryText.isHidden == false{
                hideInjuryText()
            }
                // If the info button was pressed
            else{
                showInjuryText()
            }
        }
    }
    
    @objc func selectView(){
        changeViewButtonArray = [changeViewButton1, changeViewButton2, changeViewButton3, changeViewButton4, changeViewButton5]
        var imageNames: [String] = []
        if anatomy.section == true{
            for n in 0...anatomy.views.count-1{
                imageNames.append(anatomy.views[n].viewName)
            }
        }
        else{
            if injury.dropDownMenu.count == 0{
                for n in 0...injury.views.count-1{
                    imageNames.append(injury.views[n].viewName)
                }
            }
            else{
                imageNames = injury.dropDownMenu
            }
        }
        
        for n in 0...imageNames.count-1{
            if n == currentView{
                changeViewButtonArray[n].backgroundColor = UIColor(red:0.35, green:0.65, blue:0.50, alpha:1.0)
            }
            else{
                changeViewButtonArray[n].backgroundColor = UIColor(red:0.18, green:0.18, blue:0.18, alpha:1.0)
            }
            changeViewButtonArray[n].setTitle(imageNames[n],for: .normal)
            changeViewButtonArray[n].isHidden = false
        }
        if changeViewList.isHidden == false{
            hideChangeView()
        }
        else{
            showChangeView()
        }
     }
    
    func showChangeView(){
        let showView = CGAffineTransform(translationX: 0, y: 200)
        changeViewList.isHidden = false
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.changeViewList.transform = showView
                        self.viewButton.setBackgroundImage(UIImage(named: "MoreViewsUp"), for: .normal)
        })
    }
    
    func hideChangeView(){
        let hideView = CGAffineTransform(translationX: 0, y: 0)
        UIView.animate(withDuration: 0.4, delay: 0.0, options: [.curveEaseInOut],
                       animations: {
                        self.changeViewList.transform = hideView
                        self.viewButton.setBackgroundImage(UIImage(named: "MoreViews"), for: .normal)
        })
        let when = DispatchTime.now() + 0.5
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.changeViewList.isHidden = true
            for item in self.changeViewButtonArray{
                item.isHidden = true
            }
        }
    }
    
    func viewChanged(buttonNumber:Int){
        hideChangeView()
        if currentView != buttonNumber{
            anatomy.anatomyOverlay = false
            injury.anatomyOverlay = false
            anatomy.currentStep = 0
            currentView = buttonNumber
            if anatomy.section == true{
                loadSteps()
            }
            else{
                loadInjuries()
            }
            if injuryText.isHidden == false{
                hideInjuryText()
            }
        }
    }
    
    func beginNormalAnatomyQuiz(quizSection: String, quizType: String){
        /*Quiz can be: I
         -Name the structure
         -Find the structure from name
         -Identify the injury
         */
        
    }
    
    func beginInjuryIdentityQuiz(quizSection: String, quizType: String){
        
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
