//
//  ImageClasses.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 2/5/18.
//  Copyright © 2018 Core Medical Apps, LLC. All rights reserved.
//

import Foundation
import UIKit

// Set up view, anatomy view, and injury view
class MarkedAnatomyComponent{
    var componentImage: UIImage
    var componentPointer: UIImage // The arrow pointing from the label to the image (only necessary if two components share the same image eg carina and bronchus)
    var componentLabel: UIImage
    var componentName: String
    var imageID: Int // To be used if two components share the same image, to prevent doubling up
    init(componentImage: UIImage, componentPointer: UIImage = #imageLiteral(resourceName: "Blank.png"), componentLabel: UIImage, componentName: String, imageID: Int = 0){
        self.componentImage = componentImage
        self.componentPointer = componentPointer
        self.componentLabel = componentLabel
        self.componentName = componentName
        self.imageID = imageID
    }
}

class View {
    var viewName: String
    var sectionName: String
    var normalImage: UIImage
    var markedImage: UIImage
    var markedImageByComponents: [MarkedAnatomyComponent]
    var steps: [UIImage]
    var stepDescriptions: [String]
    var descriptionAtBottom: Bool
    var attribution: String
    init(viewName: String = "", sectionName: String, normalImage: UIImage = #imageLiteral(resourceName: "Placeholder.jpg"), markedImage: UIImage = #imageLiteral(resourceName: "Placeholder.jpg"), markedImageByComponents: [MarkedAnatomyComponent] = [], steps: [UIImage] = [], stepDescriptions: [String] = [], descriptionAtBottom: Bool = true, attribution: String = ""){
        self.viewName = viewName
        self.sectionName = sectionName
        self.normalImage = normalImage
        self.markedImage = markedImage
        self.markedImageByComponents = markedImageByComponents
        self.steps = steps
        self.stepDescriptions = stepDescriptions
        self.descriptionAtBottom = descriptionAtBottom
        self.attribution = attribution
    }
}

class AnatomyView {
    var title: String
    var views: [View]
    var normalImages: [UIImage] = []
    var normalImagesMarked: [UIImage] = []
    var attribution: [String] = []
    var viewNames: [String] = []
    var steps: [[UIImage]] = []
    var injuryList: [[[InjuryView]]]
    var initialImages: [UIImage] = []
    var initialImagesMarked: [UIImage] = []
    var numberOfPages: Int = 0
    var anatomyOverlay: Bool = false
    var currentStep: Int = 0
    var section: Bool = true
    
    init(title: String, views: [View] = [], injuryList: [[[InjuryView]]] = []){
        self.title = title
        self.views = views
        self.injuryList = injuryList
    }
}

class InjuryView: AnatomyView{
    var injuryImages: [UIImage]
    var injuryImagesMarked: [UIImage]
    var injuryTitle: [String]
    var injuryMasterTitle: String // Display name for an injury in the injury table when an injury has multiple titles (like Salter Harris I, II, etc)
    var shortInjuryTitle: [String]
    var injuryAttribution: [String]
    var overviewText: String
    var findingsText: String
    var managementText: String
    var otherTitle: String
    var otherText: String
    var normalToggle: Bool = false
    var dropDownMenu: [String]
    
    init(views: [View], injuryImages: [UIImage] = [#imageLiteral(resourceName: "Placeholder.jpg")], injuryImagesMarked: [UIImage] = [#imageLiteral(resourceName: "Placeholder.jpg")], injuryTitle: [String] = [], shortInjuryTitle: [String] = [], injuryMasterTitle: String, injuryAttribution: [String], dropDownMenu: [String] = [], overviewText: String, findingsText: String, managementText: String, otherTitle: String = "", otherText: String = ""){
        self.dropDownMenu = dropDownMenu
        self.injuryImages = injuryImages
        self.injuryImagesMarked = injuryImagesMarked
        self.injuryTitle = injuryTitle
        self.shortInjuryTitle = shortInjuryTitle
        self.injuryMasterTitle = injuryMasterTitle
        self.injuryAttribution = injuryAttribution
        self.overviewText = overviewText
        self.findingsText = findingsText
        self.managementText = managementText
        self.otherTitle = otherTitle
        self.otherText = otherText
        super.init(title: "")
        self.title = title
        self.views = views
        section = false
    }
    
    func setUpTitles(){
        var n = 1
        if injuryTitle == []{
            while n <= injuryImages.count{
                injuryTitle.append(injuryMasterTitle)
                n += 1
            }
            print(injuryTitle.count)
            /*
            for n in 1...injuryImages.count{
                injuryTitle.append(injuryMasterTitle)
            }*/
        }
    }
}
