//
//  ImageData.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 2/5/18.
//  Copyright © 2018 Core Medical Apps, LLC. All rights reserved.
//

import Foundation
import UIKit

//This is the file for the ultrasound section now

let apChestTrachea = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Trachea.png"),
    componentPointer: #imageLiteral(resourceName: "AP Chest Trachea Pointer.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Trachea Label.png"),
    componentName: "Trachea",
    imageID: 1
)

let apChestBronchus = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Trachea.png"),
    componentPointer: #imageLiteral(resourceName: "AP Chest Bronchus Pointer.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Bronchus Label.png"),
    componentName: "Bronchus",
    imageID: 1
)

let apChestCarina = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Trachea.png"),
    componentPointer: #imageLiteral(resourceName: "AP Chest Carina Pointer.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Carina Label.png"),
    componentName: "Carina",
    imageID: 1
)

let apChestAorticKnob = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Mediastinum.png"),
    componentPointer: #imageLiteral(resourceName: "AP Chest Aortic Knob Pointer.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Aortic Knob Label.png"),
    componentName: "Aortic Knob",
    imageID: 2
)

let apChestMediastinum = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Mediastinum.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Mediastinum Label.png"),
    componentName: "Mediastinum",
    imageID: 2
)

let apChestDiaphragm = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Diaphragm.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Diaphragm Label.png"),
    componentName: "Diaphragm"
)

let apChestHeart = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Heart.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Heart Label.png"),
    componentName: "Heart"
)

let apChestHilum = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "AP Chest Hilum.png"),
    componentLabel: #imageLiteral(resourceName: "AP Chest Hilum Label.png"),
    componentName: "Hilum"
)

let lateralChestAorta = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "Lateral Chest Aorta Image.png"),
    componentLabel: #imageLiteral(resourceName: "Lateral Chest Aorta Label.png"),
    componentName: "Aorta"
)

let lateralChestHeart = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "Lateral Chest Heart Image.png"),
    componentLabel: #imageLiteral(resourceName: "Lateral Chest Heart Label.png"),
    componentName: "Heart"
)

let lateralChestHorizontalFissure = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "Lateral Chest Horizontal Fissure Image.png"),
    componentLabel: #imageLiteral(resourceName: "Lateral Chest Horizontal Fissure Label.png"),
    componentName: "Horizontal Fissure"
)

let lateralChestObliqueFissure = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "Lateral Chest Oblique Fissure Image.png"),
    componentLabel: #imageLiteral(resourceName: "Lateral Chest Oblique Fissure Label.png"),
    componentName: "Oblique Fissure"
)

let lateralChestLeftDiaphragm = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "Lateral Chest Left Diaphragm Image.png"),
    componentLabel: #imageLiteral(resourceName: "Lateral Chest Left Diaphragm Label.png"),
    componentName: "Left Diaphragm"
)

let lateralChestRightDiaphragm = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "Lateral Chest Right Diaphragm Image.png"),
    componentLabel: #imageLiteral(resourceName: "Lateral Chest Right Diaphragm Label.png"),
    componentName: "Right Diaphragm"
)

let lateralChestSpine = MarkedAnatomyComponent(
    componentImage: #imageLiteral(resourceName: "Lateral Chest Spine Image.png"),
    componentLabel: #imageLiteral(resourceName: "Lateral Chest Spine Label.png"),
    componentName: "Spine"
)

let apShoulder = View(
    viewName: "AP View",
    sectionName: "Shoulder",
    stepDescriptions: ["Ensure that the inferior acromion and clavicle are well-aligned", "Make sure the coraco-clavicular distance is less than 1.3 cm", "Make sure the head of the humerus is not directly inferior to the coracoid", "Ensure that the glenoid cavity parallels the articular surface of the humeral head", "Check all bones in the view for fractures (including the body of the scapula)"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 37498"
)

let apicalObliqueShoulder = View(
    viewName: "Apical Oblique",
    sectionName: "Shoulder",
    stepDescriptions: ["Ensure the center of the humeral head is aligned with the center of the glenoid", "Check all bones for signs of fracture, especially the humerus and glenoid"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 53068"
)

let lateralYShoulder = View(
    viewName: "Lateral Y",
    sectionName: "Shoulder",
    stepDescriptions: ["Make sure that the head of the humerus completely covers the center of the 'Y'", "Examine all bones for signs of fracture"],
    attribution: "Case courtesy of Mr Andrew Murphy\nRadiopaedia.org, rID: 48080"
)

let apElbow = View(
    viewName: "AP View",
    sectionName: "Elbow",
    stepDescriptions: ["Check the head of the radius very carefully for any cortical disruption. Fractures here can be very subtle.", "Examine all other bones for signs of fracture"],
    attribution: "Case courtesy of Dr Henry Knipe\nRadiopaedia.org, rID: 39322"
)

let apPedsElbow = View(
    viewName: "AP View: Peds",
    sectionName: "Elbow",
    stepDescriptions: ["Peds only: Ensure that the ossified centers appear in the order 'CRITOL'", "Peds only: Ensure that the medial epicondyle overlaps with the humeral metaphysis", "Check all bones for signs of fracture", "Don't forget: Nursemaid's elbow has no radiologic findings!"],
    attribution: "Uploaded by user Glitzy queen00\nvia Wikimedia Commons"
)

let lateralElbow = View(
    viewName: "Lateral View",
    sectionName: "Elbow",
    stepDescriptions: ["Make sure the long axis of the radius intersects the capitellum", "Ensure the anterior and posterior fat pads are not displaced", "Examine the radial head for signs of fracture. These can be very subtle.", "Examine all other bones for signs of fracture", "Peds only: Ensure at least 1/3 of the capitellum is anterior to the anterior humeral line"],
    attribution: "By MB, CC BY-SA 2.5\nvia Wikimedia Commons"
)

let paWrist = View(
    viewName: "PA View",
    sectionName: "Wrist",
    stepDescriptions: ["Ensure that the ulnar styloid process is intact", "Make sure the articulating surface of the radius is intact with no cortical disruptions", "Make sure that the ulna does not extend more distally than the articulating surface of the radius", "Ensure that the scapho-lunate distance is < 2 mm", "Inspect the scaphoid bone for fractures", "Peds only: Inspect radial cortex for angulation or bulging"],
    attribution: "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org rID: 36685"
)

let lateralWrist = View(
    viewName: "Lateral View",
    sectionName: "Wrist",
    stepDescriptions: ["Ensure palmar tilt of the radius is between 2 and 20 degrees", "Ensure that the dorsal surface of the radius is smooth", "Make sure that the articular surface of the radius is smooth", "Make sure that the capitate is in its normal position in the lunate", "Check for bony fragments dorsal to the carpal bones"],
    descriptionAtBottom: false,
    attribution: "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 36685"
)

let scaphoidWrist = View(
    viewName: "Scaphoid View",
    sectionName: "Wrist",
    stepDescriptions: ["Inspect scaphoid carefully for fracture. Injuries may be very subtle", "Inspect radius for fracture, including the styloid process"],
    attribution: "Case courtesy of Michael L. Richardson, M.D."
)

let paHand = View(
    viewName: "PA View",
    sectionName: "Hand",
    stepDescriptions: ["Examine site of injury for fractures and dislocations", "Make sure there is a visible gap at the 4th and 5th carpometacarpal joints", "Check the base of the thumb carefully for irregularities, including avulsion fracture"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 37486"
)

let obliqueHand = View(
    viewName: "Oblique View",
    sectionName: "Hand",
    stepDescriptions: ["Check the site of injury for fracture or dislocation. Correlate with the PA view."],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 37486"
)

let apPelvis = View(
    viewName: "AP View",
    sectionName: "Pelvis",
    stepDescriptions: ["Examine the SI joints. They should be symmetrical and no more than 2 mm wide", "Examine the pubic symphysis. It should be less than 5 mm wide", "Ensure the main pelvic ring is intact, with good alignment at the SI joints and pubic symphysis", "Make sure the outer pelvic ring has no cortical disruptions or other signs of fracture", "Make sure the obturator foramina are smooth and symmetrical", "Ensure the arcuate lines are unbroken and symmetrical", "Examine the acetabula for asymmetry or signs of fracture", "Examine the femoral neck for fracture. Make sure the femoral head is centered in the acetabulum.", "Ages 10-25: Examine apophyses for symmetry and signs of avulsion fracture"],
    attribution: "Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 28928"
)

let lateralHip = View(
    viewName: "Lateral View",
    sectionName: "Hip",
    stepDescriptions: ["Examine the cortex of the femoral neck for signs of fracture", "Examine the subcapsular region for opaque or lucent fracture lines", "Check for signs of an acetabular fracture", "Ensure the femoral head is within the acetabulum"],
    attribution: "Case courtesy of Mr Andrew Murphy\nRadiopaedia.org, rID: 48083"
)

let apKnee = View(
    viewName: "AP View",
    sectionName: "Knee",
    stepDescriptions: ["Ensure the tibial plateaus are smooth with no cortical disruptions", "Make sure that the tibia doesn't extend out more than 5 mm past the femur", "Ensure there is no increased density in the subchondral bone", "Check the tibial spines for signs of fracture", "Check the contours of the patella for signs of fracture", "Check the fibular head and neck carefully for signs of fracture", "Check the entire image for bony fragments", "Peds only: Check the fibular and tibial cortices for torus or greenstick fracture", "Peds only: Check all growth plates for epiphyseal fractures", "Peds only: Check the femoral condyles for a fracture or other lesion"],
    attribution: "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 36689"
)

let lateralKnee = View(
    viewName: "Lateral View",
    sectionName: "Knee",
    stepDescriptions: ["Make sure the suprapatellar bursa is < 5 mm thick", "Check suprapatellar bursa for a fat-fluid level", "Ensure the patella is <= 1.2x its width from the tibial tuberosity", "Check the patella for any signs of fracture", "Ensure the condylar surfaces of the femur are smooth", "Examine the entire image for small bone fragments"],
    attribution: "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 36689"
)

let lateralAnkle = View(
    viewName: "Lateral View",
    sectionName: "Ankle",
    stepDescriptions: ["Check the fibula for defects, including oblique fracture lines", "Check the tibial cortex and articular surface for disruptions", "Check the neck of the talus for fracture", "Ensure that you can see the joint space between the talus and navicular bones", "Examine the calcaneum for fracture lines or cortical disruptions", "Ensure that Bohler's angle is 30 degrees or greater", "Check the base of the 5th metatarsal for fractures"],
    descriptionAtBottom: false,
    attribution: "Case courtesy of Dr Ian Bickle\nRadiopaedia.org, rID: 37950"
)

let apMorticeAnkle = View(
    viewName: "AP Mortice",
    sectionName: "Ankle",
    stepDescriptions: ["Ensure that the tibia and fibula have an area of overlap", "Check that the gap superior to the tibial-fibular overlap is <= 6 mm", "Check the lateral and medial malleoli for fractures", "Ensure the ankle joint is no more than 4 mm wide at any point", "Check the talus for signs of cortical disruption or bony fragments", "Peds only: Make sure that the growth plates are normal"],
    attribution: "Case courtesy of Dr Ian Bickle\nRadiopaedia.org, rID: 37950"
)

let apFoot = View(
    viewName: "AP View",
    sectionName: "Foot",
    stepDescriptions: ["Ensure the 2nd metatarsal's Lisfranc join is well aligned", "Check the metatarsals and phalanges for signs of fracture"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 37497"
)

let obliqueFoot = View(
    viewName: "Oblique View",
    sectionName: "Foot",
    stepDescriptions: ["Ensure the 3rd metatarsal's Lisfranc join is well aligned", "Check the metatarsals and phalanges for signs of fracture", "Ensure the midfoot joints are smooth and even"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 37497"
)

let lateralFoot = View(
    viewName: "Lateral View",
    sectionName: "Foot",
    stepDescriptions: ["Check the talus and calcaneum for signs of fracture", "Check the base of the 5th metatarsal for fracture", "Ensure the midfoot joint spaces are smooth and even"],
    attribution: "Case courtesy of Dr Craig Hacking, Radiopaedia.org\nrID: 37497"
)

let lateralCSpine = View(
    viewName: "Lateral View",
    sectionName: "C Spine",
    stepDescriptions: ["Ensure the arch of C1 is less than 3 mm from the peg (5 mm in peds)", "Make sure the anterior and posterior cortices of the peg align with the body of C2", "Ensure Harris' Ring is unbroken both anteriorly and posteriorly", "Check each vertebral body from C3-C7 for equal heights anteriorly and posteriorly", "Ensure the anterior, posterior, and spinolaminar lines are smooth", "Check the width of the prevertebral soft tissue for widening"],
    attribution: "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 32505"
)

let apPegCSpine = View(
    viewName: "AP Peg View",
    sectionName: "C Spine",
    stepDescriptions: ["Make sure the lateral margins of the C1 and C2 masses align", "Ensure the spaces flanking the peg are equal in width", "Check the peg for a transverse line indicating fracture"],
    attribution: "Case courtesy of Dr Ian Bickle\nRadiopaedia.org, rID: 46396"
)

let longAPCSpine = View(
    viewName: "Long AP View",
    sectionName: "C Spine",
    stepDescriptions: ["Ensure the spinous processes are vertically aligned", "Ensure spinous processes are fairly evenly spaced"],
    attribution: "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 32505"
)

let lateralLSpine = View(
    viewName: "Lateral View",
    sectionName: "L Spine",
    stepDescriptions: ["Ensure each vertebral body has equal anterior and posterior heights", "Ensure the vertebral bodies are vertically aligned", "Make sure each vertebral body is intact with a smooth cortex", "Check for bone fragments anterior to the vertebral bodies", "Assess spine for instability (injuries in more than one column)"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 37918"
)

let apLSpine = View(
    viewName: "AP View",
    sectionName: "L Spine",
    stepDescriptions: ["Examine transverse processes for signs of fracture", "Ensure the gap between pedicles is regular, and is wider inferiorly"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 37918"
)

let frontalChest = View(
    viewName: "Frontal View",
    sectionName: "Chest",
    stepDescriptions: ["Determine if the film is AP or PA, supine or upright. AP will make the heart appear larger, among other things", "Ensure adequate inspiration: ribs 5-7 should intersect the diaphragm at the mid-clavicular line", "Assess for rotation by making sure the medial clavicles are equidistant from the spinal column", "Ensure trachea is midline and there is no aspirated foreign body", "Check the ribs, clavicles, scapulae, humeral heads, and spine for signs of fracture", "Measure cardiothoracic ratio. The heart should be <50% of the width of the thorax on the PA view.", "Ensure that the left and right borders of the heart are well defined", "Make sure the diaphragm borders are clearly seen and that there is no diaphragmatic flattening", "Make sure there is no free air directly under the diaphragm. A gastric bubble and colonic air is normal.", "Examine both costophrenic angles. They should be sharp.", "Examine the lungs for interstitial (linear/nodular) or alveolar (fluffy) opacities, masses, or consolidation", "Examine the lungs for a gap between the chest wall and lung parenchyma indicating a pneumothorax", "Check for normal aortic knob contour and widened mediastinum", "Check hilum for masses, lymphadenopathy, or calcifications. The thymus is present here in children.", "Check proper position of ET tube, NG tube, and central line, if present"],
    attribution: "Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 8304"
)

let lateralChest = View(
    viewName: "Lateral View",
    sectionName: "Chest",
    stepDescriptions: ["Check all bones for signs of fracture", "Ensure each vertebral body is darker than the one above it", "Check the costophrenic angles to ensure they are sharp", "Make sure the borders of the diaphragm are clearly seen (except the anterior left where it abuts the heart)", "Examine the lungs for interstitial (linear/nodular) or alveolar (fluffy) opacities, masses, or consolidation"],
    descriptionAtBottom: false,
    attribution: "Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 8304"
)

let abdominal = View(
    viewName: "Frontal View",
    sectionName: "Abdomen",
    stepDescriptions: ["Make sure there is no free air directly under the diaphragm (only visible on erect film). A gastric bubble is normal.", "Examine inferior lungs for consolidation suggestive of pneumonia", "Ensure small intestine (if visible) is < 3 cm in diameter, large bowel is < 6 cm, and cecum and sigmoid are < 9 cm"],
    attribution: "Case courtesy of Dr Craig Hacking\nRadiopaedia.org, rID: 40900"
)

let apShoulderInjuries: [[InjuryView]] = [[acJointDisruption, anteriorDislocation, bankartLesion, clavicleFracture, hillSachsLesion, posteriorDislocation, proximalHumerusFracture, ribFracture, salterHarrisFracture], [acJointDisruption], [acJointDisruption], [anteriorDislocation, hillSachsLesion, bankartLesion, proximalHumerusFracture], [anteriorDislocation, posteriorDislocation, hillSachsLesion, bankartLesion, proximalHumerusFracture], [proximalHumerusFracture, clavicleFracture, ribFracture]]
let apicalObliqueShoulderInjuries: [[InjuryView]] = [[acJointDisruption, anteriorDislocation, bankartLesion, clavicleFracture, hillSachsLesion, posteriorDislocation, proximalHumerusFracture, ribFracture, salterHarrisFracture], [anteriorDislocation, posteriorDislocation, hillSachsLesion, bankartLesion, proximalHumerusFracture], [bankartLesion, proximalHumerusFracture]]
let lateralYShoulderInjuries: [[InjuryView]] = [[acJointDisruption, anteriorDislocation, bankartLesion, clavicleFracture, hillSachsLesion, posteriorDislocation, proximalHumerusFracture, ribFracture, salterHarrisFracture], [anteriorDislocation, posteriorDislocation, hillSachsLesion, bankartLesion, proximalHumerusFracture], [proximalHumerusFracture, clavicleFracture, ribFracture]]

let shoulder = AnatomyView(
    title: "Shoulder",
    views: [apShoulder, apicalObliqueShoulder, lateralYShoulder],
    injuryList: [apShoulderInjuries, apicalObliqueShoulderInjuries, lateralYShoulderInjuries]
)

let apElbowInjuries: [[InjuryView]] = [[nursemaidsElbow, olecranonFracture, monteggiaFractureDislocation, lateralHumeralCondyleFracture, radialHeadFracture, medialEpicondyleAvulsion, supracondylarFracture, salterHarrisFracture], [radialHeadFracture], [olecranonFracture, monteggiaFractureDislocation, lateralHumeralCondyleFracture]]
let pedsElbowInjuries: [[InjuryView]] = [[nursemaidsElbow, olecranonFracture, monteggiaFractureDislocation, lateralHumeralCondyleFracture, radialHeadFracture, medialEpicondyleAvulsion, supracondylarFracture, salterHarrisFracture], [medialEpicondyleAvulsion], [medialEpicondyleAvulsion], [supracondylarFracture, lateralHumeralCondyleFracture], [nursemaidsElbow]]
let lateralElbowInjuries: [[InjuryView]] = [[nursemaidsElbow, olecranonFracture, monteggiaFractureDislocation, lateralHumeralCondyleFracture, radialHeadFracture, medialEpicondyleAvulsion, supracondylarFracture, salterHarrisFracture], [radialHeadDislocation], [radialHeadFracture, olecranonFracture], [radialHeadFracture], [olecranonFracture, monteggiaFractureDislocation, supracondylarFracture], [supracondylarFracture]]

let elbow = AnatomyView(
    title: "Elbow",
    views: [apElbow, apPedsElbow, lateralElbow],
    injuryList: [apElbowInjuries, pedsElbowInjuries, lateralElbowInjuries]
)

let paWristInjuries: [[InjuryView]] = [[collesFracture, smithFracture, bartonFracture, chauffeurFracture, nightstickFracture, ulnarStyloidFracture, radioUlnarJointDislocation, galeazziFracture, scaphoLunateDissociation, scaphoidFracture, greenstickFracture, torusFracture, lunateDislocation, perilunateDislocation, triquetralFracture, salterHarrisFracture], [ulnarStyloidFracture, collesFracture, radioUlnarJointDislocation], [collesFracture, smithFracture, bartonFracture, chauffeurFracture], [radioUlnarJointDislocation, collesFracture, galeazziFracture], [scaphoLunateDissociation, chauffeurFracture], [scaphoidFracture], [greenstickFracture, torusFracture]]
let lateralWristInjuries: [[InjuryView]] = [[collesFracture, smithFracture, bartonFracture, chauffeurFracture, nightstickFracture, ulnarStyloidFracture, radioUlnarJointDislocation, galeazziFracture, scaphoLunateDissociation, scaphoidFracture, greenstickFracture, torusFracture, lunateDislocation, perilunateDislocation, triquetralFracture, salterHarrisFracture], [collesFracture, smithFracture, bartonFracture], [collesFracture, smithFracture, bartonFracture, chauffeurFracture], [collesFracture, smithFracture, bartonFracture, chauffeurFracture], [lunateDislocation, perilunateDislocation], [triquetralFracture]]
let scaphoidWristInjuries: [[InjuryView]] = [[collesFracture, smithFracture, bartonFracture, chauffeurFracture, nightstickFracture, ulnarStyloidFracture, radioUlnarJointDislocation, galeazziFracture, scaphoLunateDissociation, scaphoidFracture, greenstickFracture, torusFracture, lunateDislocation, perilunateDislocation, triquetralFracture, salterHarrisFracture], [scaphoidFracture], [collesFracture, smithFracture, bartonFracture]]

let wrist = AnatomyView(
    title: "Wrist",
    views: [paWrist, lateralWrist, scaphoidWrist],
    injuryList: [paWristInjuries, lateralWristInjuries, scaphoidWristInjuries]
)

let paHandInjuries: [[InjuryView]] = [[malletFinger, volarPlateFracture, boxersFracture, simplePhalanxMetacarpalFracture, bennettsFracture, rolandosFracture, extraArticularThumbFracture, gamekeepersThumb, carpometacarpalDislocation, salterHarrisFracture], [malletFinger, volarPlateFracture, boxersFracture, simplePhalanxMetacarpalFracture, bennettsFracture, rolandosFracture, extraArticularThumbFracture, gamekeepersThumb, carpometacarpalDislocation], [carpometacarpalDislocation], [bennettsFracture, rolandosFracture, extraArticularThumbFracture]]
let obliqueHandInjuries: [[InjuryView]] = [[malletFinger, volarPlateFracture, boxersFracture, simplePhalanxMetacarpalFracture, bennettsFracture, rolandosFracture, extraArticularThumbFracture, gamekeepersThumb, carpometacarpalDislocation, salterHarrisFracture], [malletFinger, volarPlateFracture, boxersFracture, simplePhalanxMetacarpalFracture, bennettsFracture, rolandosFracture, extraArticularThumbFracture, gamekeepersThumb, carpometacarpalDislocation]]

let hand = AnatomyView(
    title: "Hand",
    views: [paHand, obliqueHand],
    injuryList: [paHandInjuries, obliqueHandInjuries]
)

let apPelvisInjuries: [[InjuryView]] = [[mainPelvicRingFracture, pubicRamusFracture, sacralFracture, acetabularFracture, femoralNeckFracture, posteriorHipDislocation], [mainPelvicRingFracture], [mainPelvicRingFracture], [mainPelvicRingFracture], [mainPelvicRingFracture], [pubicRamusFracture], [sacralFracture], [acetabularFracture], [femoralNeckFracture, posteriorHipDislocation], [apophysealAvulsion]]
let lateralHipInjuries: [[InjuryView]] = [[mainPelvicRingFracture, pubicRamusFracture, sacralFracture, acetabularFracture, femoralNeckFracture, posteriorHipDislocation], [femoralNeckFracture, apophysealAvulsion], [femoralNeckFracture], [acetabularFracture], [posteriorHipDislocation]]

let hip = AnatomyView(
    title: "Hip",
    views: [apPelvis, lateralHip],
    injuryList: [apPelvisInjuries, lateralHipInjuries]
)

let apKneeInjuries: [[InjuryView]] = [[tibialPlateauFracture, cruciateLigamentInjury, patellarFracture, fibularNeckFracture, segondFracture, salterHarrisFracture, supracondylarFemurFracture, patellarTendonRupture, osteochondralDefect], [tibialPlateauFracture], [tibialPlateauFracture], [tibialPlateauFracture], [cruciateLigamentInjury], [patellarFracture], [fibularNeckFracture], [cruciateLigamentInjury, segondFracture], [greenstickFracture], [salterHarrisFracture], [osteochondralDefect]]
let lateralKneeInjuries: [[InjuryView]] = [[tibialPlateauFracture, cruciateLigamentInjury, patellarFracture, fibularNeckFracture, segondFracture, salterHarrisFracture, supracondylarFemurFracture, patellarTendonRupture, osteochondralDefect], [], [tibialPlateauFracture, supracondylarFemurFracture], [patellarTendonRupture], [patellarFracture], [supracondylarFracture], [cruciateLigamentInjury, segondFracture]]

let knee = AnatomyView(
    title: "Knee",
    views: [apKnee, lateralKnee],
    injuryList: [apKneeInjuries, lateralKneeInjuries]
)

let lateralAnkleInjuries: [[InjuryView]] = [[distalFibulaFracture, talusFracture, talonavicularJointDislocation, calcanealFracture, fifthMetatarsalAvulsionFracture ,jonesFracture, osteochondralDefect, salterHarrisFracture], [distalFibulaFracture], [distalFibulaFracture], [talusFracture], [talonavicularJointDislocation], [calcanealFracture], [calcanealFracture], [fifthMetatarsalAvulsionFracture, jonesFracture]]
let apMorticeAnkleInjuries: [[InjuryView]] = [[distalFibulaFracture, talusFracture, talonavicularJointDislocation, calcanealFracture, fifthMetatarsalAvulsionFracture ,jonesFracture, osteochondralDefect, salterHarrisFracture], [distalFibulaFracture], [distalFibulaFracture], [distalFibulaFracture], [talusFracture, osteochondralDefect], [salterHarrisFracture]]

let ankle = AnatomyView(
    title: "Ankle",
    views: [lateralAnkle, apMorticeAnkle],
    injuryList: [lateralAnkleInjuries, apMorticeAnkleInjuries]
)

let apFootInjuries: [[InjuryView]] = [[lisfrancInjury, metatarsalOrPhalanxFracture, fifthMetatarsalAvulsionFracture, jonesFracture, talonavicularJointDislocation, talusFracture, calcanealFracture, salterHarrisFracture], [lisfrancInjury], [metatarsalOrPhalanxFracture, fifthMetatarsalAvulsionFracture, jonesFracture, lisfrancInjury]]
let obliqueFootInjuries: [[InjuryView]] = [[lisfrancInjury, metatarsalOrPhalanxFracture, fifthMetatarsalAvulsionFracture, jonesFracture, talonavicularJointDislocation, talusFracture, calcanealFracture, salterHarrisFracture], [lisfrancInjury], [metatarsalOrPhalanxFracture, fifthMetatarsalAvulsionFracture, jonesFracture, lisfrancInjury], [talonavicularJointDislocation, lisfrancInjury]]
let lateralFootInjuries: [[InjuryView]] = [[lisfrancInjury, metatarsalOrPhalanxFracture, fifthMetatarsalAvulsionFracture, jonesFracture, talonavicularJointDislocation, talusFracture, calcanealFracture, salterHarrisFracture], [talusFracture, calcanealFracture], [fifthMetatarsalAvulsionFracture, jonesFracture], [talonavicularJointDislocation, lisfrancInjury]]

let foot = AnatomyView(
    title: "Foot",
    views: [apFoot, obliqueFoot, lateralFoot],
    injuryList: [apFootInjuries, obliqueFootInjuries, lateralFootInjuries]
)

let lateralCSpineInjuries: [[InjuryView]] = [[odontoidPegFracture, transverseLigamentRupture, jeffersonFracture, hangmansFracture, spinousProcessFracture, compressionFracture, unilateralFacetDislocation, hyperflexionTeardropFracture, anteriorCervicalSubluxation], [transverseLigamentRupture], [odontoidPegFracture, hangmansFracture], [odontoidPegFracture, hangmansFracture], [compressionFracture], [spinousProcessFracture, hyperflexionTeardropFracture, anteriorCervicalSubluxation, unilateralFacetDislocation, hangmansFracture], [odontoidPegFracture, transverseLigamentRupture, jeffersonFracture, hangmansFracture, spinousProcessFracture, compressionFracture, unilateralFacetDislocation, hyperflexionTeardropFracture, anteriorCervicalSubluxation]]
let apPegCSpineInjuries: [[InjuryView]] = [[odontoidPegFracture, transverseLigamentRupture, jeffersonFracture, hangmansFracture, spinousProcessFracture, compressionFracture, unilateralFacetDislocation, hyperflexionTeardropFracture, anteriorCervicalSubluxation], [jeffersonFracture, transverseLigamentRupture], [odontoidPegFracture, transverseLigamentRupture], [odontoidPegFracture]]
let longAPCSpineInjuries: [[InjuryView]] = [[odontoidPegFracture, transverseLigamentRupture, jeffersonFracture, hangmansFracture, spinousProcessFracture, compressionFracture, unilateralFacetDislocation, hyperflexionTeardropFracture, anteriorCervicalSubluxation], [unilateralFacetDislocation], [anteriorCervicalSubluxation]]

let cSpine = AnatomyView(
    title: "C Spine",
    views: [lateralCSpine, apPegCSpine, longAPCSpine],
    injuryList: [lateralCSpineInjuries, apPegCSpineInjuries, longAPCSpineInjuries]
)

let lateralLSpineInjuries: [[InjuryView]] = [[compressionFracture, burstFracture, flexionDistractionInjury, lumbarFractureDislocationInjury, transverseProcessFracture], [compressionFracture], [lumbarFractureDislocationInjury], [lumbarFractureDislocationInjury, compressionFracture, burstFracture], [compressionFracture, burstFracture, flexionDistractionInjury, lumbarFractureDislocationInjury], [burstFracture, flexionDistractionInjury, lumbarFractureDislocationInjury, compressionFracture]]
let apLSpineInjuries: [[InjuryView]] = [[compressionFracture, burstFracture, flexionDistractionInjury, lumbarFractureDislocationInjury, transverseProcessFracture], [transverseProcessFracture], [burstFracture]]

let lSpine = AnatomyView(
    title: "L Spine",
    views: [lateralLSpine, apLSpine],
    injuryList: [lateralLSpineInjuries, apLSpineInjuries]
)

let frontalChestInjuries: [[InjuryView]] = [[pneumonia, aspiratedForeignBody, pleuralEffusion, ribFracture, tensionPneumothorax, openPneumothorax, aorticDissection, heartFailure, nodule, perforatedViscus, clavicleFracture, proximalHumerusFracture, etTube, ngTube, centralLine], [], [], [], [tensionPneumothorax, aspiratedForeignBody], [ribFracture, clavicleFracture, proximalHumerusFracture], [heartFailure], [pneumonia], [pneumonia, heartFailure, pleuralEffusion], [perforatedViscus], [pleuralEffusion, heartFailure], [pneumonia, nodule, heartFailure], [openPneumothorax, tensionPneumothorax], [aorticDissection], [], [etTube, ngTube, centralLine]]
let lateralChestInjuries: [[InjuryView]] = [[pneumonia, aspiratedForeignBody, pleuralEffusion, ribFracture, tensionPneumothorax, openPneumothorax, aorticDissection, heartFailure, nodule, perforatedViscus, clavicleFracture, proximalHumerusFracture, etTube, ngTube, centralLine], [compressionFracture, ribFracture], [pneumonia], [pleuralEffusion, heartFailure], [pneumonia], [pneumonia, heartFailure, nodule]]

let chest = AnatomyView(
    title: "Chest",
    views: [frontalChest, lateralChest],
    injuryList: [frontalChestInjuries, lateralChestInjuries]
)

let abdominalInjuries: [[InjuryView]] = [[pneumonia, perforatedViscus, largeBowelObstruction, smallBowelObstruction], [perforatedViscus], [pneumonia], [largeBowelObstruction, smallBowelObstruction]]

let abdomen = AnatomyView(
    title: "Abdomen",
    views: [abdominal],
    injuryList: [abdominalInjuries]
)

let anteriorDislocation = InjuryView(
    views: [apShoulder, apicalObliqueShoulder, lateralYShoulder],
    injuryMasterTitle: "Anterior Dislocation",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org\nrID: 7132", "Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 7958", "Case courtesy of Radswiki\nRadiopaedia.org, rID: 11194"],
    overviewText: "96% of shoulder dislocations. Usually caused by traumatic ABduction and external rotation. Patient will usually hold arm in external rotation and ABduction. ROM limted by pain/ anxiety.",
    findingsText: "Humeral head is not in correct position relative to glenoid.",
    managementText: "First do a neurovascular exam, especially the axillary nerve (skin over lateral shoulder). Look for conbomitant Hill-Sachs or Bankart lesions. Then, reduce under analgesia or conscious sedation. Many methods exist, such as Stimson's, scapular manipulation, or external rotation. Consult ortho if unable to reduce shoulder."
)

let bankartLesion = InjuryView(
    views: [apicalObliqueShoulder],
    injuryMasterTitle: "Bankart Lesion",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\n Radiopaedia.org, rID: 10089"],
    overviewText: "Separation of the labrum from the glenoid during a shoulder dislocation. Bad lesions can damage the glenoid margin. Small body lesion = large soft tissue lesion. Suspect in anyone with signs and symptoms of shoulder dislocation.",
    findingsText: "Defect on the anteroinferior aspect of the glenoid.",
    managementText: "Look for Hill-Sachs lesion. Refer to orthopedics for outpatient follow up."
)

let hillSachsLesion = InjuryView(
    views: [apShoulder],
    injuryMasterTitle: "Hill Sachs Lesion",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 7506"],
    overviewText: "Compression fracture of the posterolateral humeral head, caused by anterior shoulder dislocation. Common in people with current or past shoulder dislocations.",
    findingsText: "Vertical white line in humeral head, or a notch taken out of lateral humeal head. Often best seen after reduction, as in the films here.",
    managementText: "Look for a concomitant Bankart lesion. Will likely require surgical correction."
)

let acJointDisruption = InjuryView(
    views: [apShoulder],
    injuryMasterTitle: "AC Joint Disruption",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 18185"],
    overviewText: "Range from AC sprain to joint separation. Caused by fall onto or blow to shoulder with arm adducted. Pain over AC joint, arm often held  in ADduction. Pain can be reproduced by passively flexing affected shoulder to 90 degrees, then ADducting across the body (as if to touch the opposite shoulder).",
    findingsText: "Can look normal (sprain) or can see elevated or otherwise displaced clavicle. If the view looks normal but there is a high suspicion for injury, take weight-bearing films. AC injuries are graded using the Rockwood system (see below).",
    managementText: "Grades I-II: Ice, rest, sling immobilization. Grade III: Surgery in some cases. Grades IV-VI: Internal fixation.",
    otherTitle: "\n\nRockwood Classification:\n",
    otherText: "\u{2022} Type I: No clavicular elevation\n\u{2022} Type II: Clavicle elevated, but not above superior margin of acromion\n\u{2022} Type III: Clavicle elevated over the superior margin of acromion, but CC distance less than twice normal (< 2.6 cm)\n\u{2022} Type IV: Clavicle displaced posteriorly into trapezius\n\u{2022} Type V: CC distance more than twice normal (> 2.6 cm)\n\u{2022} Type VI: Clavicle inferiorly displaced behind biceps tendon"
)

let clavicleFracture = InjuryView(
    views: [apShoulder],
    injuryMasterTitle: "Clavicle Fracture",
    injuryAttribution: ["Case courtesy of Dr Benoudina Samir\nRadiopaedia.org, rID: 21744"],
    overviewText: "Caused by trauma, including FOOSH. Step-off of clavicle may be present on exam.",
    findingsText: "75% of fractures are at junction of middle and distal thirds.",
    managementText: "Look for other bony injuries and pneumothorax. Internal fixation if there is significant displacement, comminution, shortening, or angulation. Otherwise, sling and immobilization with figure-of-8 wrap until repeat X-rays show healing (4-6 weeks). Keep in mind that X-ray is not 100% sensitive-- if clinical suspicion is high, get a CT or treat empirically."
)

let posteriorDislocation = InjuryView(
    views: [apShoulder, apicalObliqueShoulder, lateralYShoulder],
    injuryMasterTitle: "Posterior Dislocation",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 13398", "Case courtesy of Mr Andrew Murphy\nRadiopaedia.org, rID: 53737", "Case courtesy of Mr Andrew Murphy\nRadiopaedia.org, rID: 53737"],
    overviewText: "3% of shoulder dislocations. Caused by seizure, electric shock, and direct blows to the anterior shoulder. Arm held in internal rotation and adduction. May have fullness in posterior shoulder.",
    findingsText: "Humeral head is not well aligned with glenoid. Lightbulb sign on AP: Humeral head is internally rotated and appears rounded. Rim sign: Widened glenohumeral joint, > 6mm.",
    managementText: "Look for concomitant Hill-Sachs or Bankart lesions. Consider orthopedic consult for a possible closed reduction. Reverse Hill-Sachs lesion taking up 20+% of the articular surface is a contraindication to closed reduction, as is duration > 3 weeks."
)

let proximalHumerusFracture = InjuryView(
    views: [apShoulder],
    shortInjuryTitle: ["Proximal Humerus Fx"],
    injuryMasterTitle: "Proximal Humerus Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 18279"],
    overviewText: "Caused by trauma in the young and low-energy falls in the elderly (including FOOSH). It can also occur at the same time as an anterior dislocation. Very common in osteoporosis. Ecchymosis on chest and in axilla is common. Axillary nerve damage in 50%.",
    findingsText: "The fracture is most commonly at the humeral neck or at the greater trochanter. Describe with Neer classification. (see below)",
    managementText: "If there is minimal displacement (Neer 1) and no neurovascular compromise, immobilize in sling. Otherwise, surgery.",
    otherTitle: "\n\nNeer Classification:\n",
    otherText: "The scale only looks at 4 parts of the humerus: the head, the greater tuberosity, the lesser tuberosity, and the shaft. The grade is based on the angulation and displacement of those 4 areas. If a piece has 45 degrees of angulation OR 1 cm of displacement it is considered 'separated'.\n\n\u{2022} One-part fracture: No part has significant angulation or displacement. The most common type.\n\u{2022} Two-part fracture: At least one of the four parts is separated.\n\u{2022} Three-part fracture: Two pieces are separated.\n\u{2022} Four-part fracture: Each piece is separated. These are very rare and have poor outcomes.\n\nFor reference, the sample image is a two-part fracture, because the lesser tuberosity is separated (angulation > 45 degrees)."
)

//Elbow

let radialHeadFracture = InjuryView(
    views: [apElbow, lateralElbow],
    injuryMasterTitle: "Radial Head Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 18045", "Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 18044"],
    overviewText: "Usually caused by a fall onto an outstreched arm. Common fracture in adults.",
    findingsText: "These be as subtle as a faint crinkle in the cortex of the radius. Look for a joint effusion, which will appear as displaced fat pads. If present, look for other injuries. Radial head fracture is part of the 'terrible triad' along with coracoid process fracture and elbow dislocation.",
    managementText: "If joint effusion is present, consider ordering oblique view or CT to better assess proximal radius. Nondisplaced fractures can be managed conservatively. Displaced or comminuted fractures require ortho and the OR."
)

let radialHeadDislocation = InjuryView(
    views: [lateralElbow],
    injuryMasterTitle: "Radial Head Dislocation",
    injuryAttribution: ["Case courtesy of Gerry  Gardner\nRadiopaedia.org, rID: 13904"],
    overviewText: "Usually an anterior dislocation as the result of trauma, such as a fall on outstretched hand (FOOSH).",
    findingsText: "Radiocapitellar line, which is drawn parallel with the axis of the proximal 3 cm of the radius, does not intersect the capitellum. Look carefully for other injuries, including assessing the osssification centers in children.",
    managementText: "Closed reduction is often possible. Open reduction if closed reduction fails."
)

let nursemaidsElbow = InjuryView(
    views: [lateralElbow],
    injuryMasterTitle: "Nursemaid's Elbow",
    injuryAttribution: ["By MB, CC BY-SA 2.5\nvia Wikimedia Commons"],
    overviewText: "Nursemaid's elbow is a subluxation of the radial head into the annular ligament. Most common in young children after their arm is pulled. Patients present with elbow flexed and pronated.",
    findingsText: "X-rays are completely normal, and should not be ordered as this is a clinical diagnosis.",
    managementText: "Reduce by supinating the forearm with the elbow held in flexion. This should cause immediate resolution of symptoms."
)

let olecranonFracture = InjuryView(
    views: [lateralElbow],
    injuryMasterTitle: "Olecranon Fracture",
    injuryAttribution: ["Case courtesy of Dr David Cuete\nRadiopaedia.org, rID: 27347"],
    overviewText: "Usually caused by trauma to elbow, fall on outstretched hand, avulsion fracture, or stress fracture.",
    findingsText: "Cortical disruption of the olecranon, typically evident on lateral X-ray",
    managementText: "Do a full neurovascular exam as ulnar nerve runs past olecranon. Get ortho involved for open reduction and internal fixation."
)

let monteggiaFractureDislocation = InjuryView(
    views: [apElbow, lateralElbow],
    shortInjuryTitle: ["Monteggia Fx-Dislocation", "Monteggia Fx-Dislocation"],
    injuryMasterTitle: "Monteggia Fracture-Dislocation",
    injuryAttribution: ["Case courtesy of Dr Matt Skalski\nRadiopaedia.org, rID: 44134", "Case courtesy of Dr Matt Skalski\nRadiopaedia.org, rID: 44134"],
    overviewText: "Caused by fall onto outstreched hand (FOOSH). Most common in children.",
    findingsText: "Ulnar shaft fracture with dislocation of the radial head. Can be classified using the Bado system (see below).",
    managementText: "Open reduction and internal fixation",
    otherTitle: "\n\nBado Classification\n",
    otherText: "Four types of injury, based primarily on location of radial head dislocation\n\n\u{2022}Type I: Anterior radial head dislocation. The most common type.\n\u{2022}Type II: Posterior radial head dislocation.\n\u{2022}Type III: Lateral radial head dislocation.\n\u{2022}Type IV: Anterior radial head dislocation in addition to a proximal radial shaft fracture (along with the requisite ulnar fracture."
)

let lateralHumeralCondyleFracture = InjuryView(
    views: [apElbow],
    injuryMasterTitle: "Lateral Condyle Fracture",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 27440"],
    overviewText: "Usually caused by a fall onto an outstretched hand. One of the most common elbow fractures in children.",
    findingsText: "Fracture is usually evident on an AP view, however there is extensive cartilagenous damage that doesn't appear on X ray.",
    managementText: "Get ortho involved for operative repair."
)

let medialEpicondyleAvulsion = InjuryView(
    views: [apPedsElbow],
    shortInjuryTitle: ["Med. Epicondyle Avulsion"],
    injuryMasterTitle: "Medial Epicondyle Avulsion",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 30167"],
    overviewText: "Most common avulsion fracture of the elbow. Common in children and adolescents. Caused by fall on outstretched hand (FOOSH) or other trauma.",
    findingsText: "The medial epicondyle will not overlap the humerus. If the medial epicondyle is not seen, make sure the ossification centers are present in order. The medial epicondyle will always appear before the trochlear center-- if there is no medial epicondyle, but a fragment in the position of the trochlea, this fragment is an avulsed medial epicondyle.",
    managementText: "Splint for minimal displacement in the non-dominant arm, otherwise it will likely require operative management."
)

let supracondylarFracture = InjuryView(
    views: [lateralElbow],
    injuryMasterTitle: "Supracondylar Fracture",
    injuryAttribution: ["Case courtesy of Dr Abhijit Datir\nRadiopaedia.org, rID: 35964"],
    overviewText: "Usually caused by a fall onto an extended elbow from a height of a few feet in children under age 10.",
    findingsText: "If fracture is not seen, look for other signs, such as the anterior or posterior fat pad signs. Additonally, 1/3 of the capitellum should lie anterior to the anterior humeral line-- if this is not the case, a fracture is likely.",
    managementText: "Splint and refer to ortho for casting or operative management."
)

//Wrist

let collesFracture = InjuryView(
    views: [paWrist, lateralWrist],
    injuryMasterTitle: "Colles Fracture",
    injuryAttribution: ["Case courtesy of Dr Benoudina Samir\nRadiopaedia.org, rID: 22354", "Case courtesy of Dr Benoudina Samir\nRadiopaedia.org, rID: 22354"],
    overviewText: "An extra-articular distal radius fracture with dorsal angulation. Occurs from a fall onto outstretched hand (FOOSH) or other trauma. Most common wrist fracture, especially in osteoporosis.",
    findingsText: "Extra-articular distal radius fracture with dorsal angulation. Ulnar styloid fracture is a common associated injury.",
    managementText: "Usually closed reduction and splinting with orthopedics referral. Open reduction if the fracture is unstable or closed reduction can't be achieved in the ED."
)

let smithFracture = InjuryView(
    views: [paWrist, lateralWrist],
    injuryMasterTitle: "Smith Fracture",
    injuryAttribution: ["Case courtesy of Dr Jan Frank Gerstenmaier\nRadiopaedia.org, rID: 25199", "Case courtesy of Dr Jan Frank Gerstenmaier\nRadiopaedia.org, rID: 25199"],
    overviewText: "Distal radius fracture with palmar angulation. Caused by fall onto flexed wrist or blow to back of wrist. Occurs in young males and elderly females.",
    findingsText: "Fracture of distal radius with palmar angulation. It can be either extra-articular (Type I) or intra-articular (Type II, also known as a reverse Barton fracture). Carpal fractures may be present as well.",
    managementText: "Usually closed reduction and splinting with orthopedics referral. Open reduction if the fracture is unstable or closed reduction can't be achieved."
)

let bartonFracture = InjuryView(
    views: [paWrist, lateralWrist],
    injuryMasterTitle: "Barton Fracture",
    injuryAttribution: ["Case courtesy of Dr Aditya Shetty\nRadiopaedia.org, rID: 28755", "Case courtesy of Dr Aditya Shetty\nRadiopaedia.org, rID: 28755"],
    overviewText: "Intra-articular dorsal radius fracture, usually caused by fall onto outstreched hand (FOOSH).",
    findingsText: "Intra-articular fracture of distal radius. Fracture involves dorsal, but not the palmar, aspect. Usually there is dorsal dislocation of the radiocarpal joint.",
    managementText: "Usually open reduction with internal fixation."
)

let chauffeurFracture = InjuryView(
    views: [paWrist],
    injuryMasterTitle: "Chauffeur Fracture",
    injuryAttribution: ["Case courtesy of Dr Henry Knipe\nRadiopaedia.org, rID: 46624"],
    overviewText: "A fracture of the radial styloid process. Caused by a blow to the dorsal wrist, or from forced dorsiflexion.",
    findingsText: "Intra-articular fracture of the radial styloid process. Look for scapholunate dislocation and ulnar styloid fracture.",
    managementText: "Usually operative fixation due to instability, even if it is not displaced."
)

let nightstickFracture = InjuryView(
    views: [paWrist],
    injuryMasterTitle: "Nightstick Fracture",
    injuryAttribution: ["Case courtesy of Dr Henry Knipe\nRadiopaedia.org, rID: 30747"],
    overviewText: "Isolated ulna fractures, caused by a direct blow. Often caused when trying to block a blow from a blunt weapon like a nightstick or bat.",
    findingsText: "Midshaft fracture of ulna.",
    managementText: "If there is less than 10 degrees of angulation and 50% displacement, splint it, otherwise open reduction and internal fixation."
)

let ulnarStyloidFracture = InjuryView(
    views: [paWrist],
    injuryMasterTitle: "Ulnar Styloid Fracture",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 8786"],
    overviewText: "Usually caused by a fall onto outstreched hand (FOOSH)",
    findingsText: "Can be isolated, but is very commonly associated with a distal radius fracture.",
    managementText: "If the fracture goes through the very base of the styloid process it requires open reduction and internal fixation, if not cast immobilization is sufficient."
)

let radioUlnarJointDislocation = InjuryView(
    views: [paWrist],
    shortInjuryTitle: ["Radio-Ulnar Dislocation"],
    injuryMasterTitle: "Radio-Ulnar Joint Dislocation",
    injuryAttribution: ["Case courtesy of Dr Jan Frank Gerstenmaier\nRadiopaedia.org, rID: 25199"],
    overviewText: "Occur following trauma, such as a fall on outstretched hand (FOOSH). Commonly associated with distal radius fractures.",
    findingsText: "The distal ulna is not aligned with the distal radius on the PA view, and can be dorsally displaced on the lateral view as well. There is often radio-ulnar joint space widening on the PA view.",
    managementText: "Usually closed reduction and splinting, however operative management may be necessary if there is extreme instability or concommitant fractures."
)

let galeazziFracture = InjuryView(
    views: [paWrist, lateralWrist],
    injuryMasterTitle: "Galeazzi Fracture",
    injuryAttribution: ["Case courtesy of Dr Alexandra Stanislavsky\nRadiopaedia.org, rID: 10961", "Case courtesy of Dr Alexandra Stanislavsky\nRadiopaedia.org, rID: 10961"],
    overviewText: "Radius shaft fracture with a radio-ulnar joint dislocation and an intact ulna. Caused by fall onto outstreched hand (FOOSH) with a flexed elbow. Most common in children.",
    findingsText: "Distal radius fracture with radio-ulnar joint dislocation.",
    managementText: "Usually operative management."
)

let scaphoLunateDissociation = InjuryView(
    views: [paWrist],
    shortInjuryTitle: ["Scapholunate Dislocation"],
    injuryMasterTitle: "Scapho-Lunate Dislocation",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 9894"],
    overviewText: "Disruption of the scapholunate ligament following trauma. If there are no other injuries pain can be mild. There is tenderness over the dorsal scaphoid region, with pain worsened with dorsiflexion. Have a high index of suspicioun, because if missed it can lead to degenerative arthritis in the wrist.",
    findingsText: "Scapho-lunate joint space > 2 mm, known as the Terry Thomas sign or the Madonna sign. There may be associated fractures or this may be an isolated finding.",
    managementText: "Operative management is required to prevent eventual scapho-lunate advanced collapse (SLAC), a type of degenerative arthritis."
)

let scaphoidFracture = InjuryView(
    views: [paWrist],
    injuryMasterTitle: "Scaphoid Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 7669"],
    overviewText: "Caused by fall on outstretched hand or stress fractures in athletes. Most common carpal fracture (75%). Patient often has anatomic snuff-box tenderness.",
    findingsText: "Most common fracture site is at the waist of the scaphoid, however a fracture is not always seen on x-ray.",
    managementText: "If X-rays are normal, repeat imaging in 7-10 days. If those are normal and clinical suspicion is high, get an MRI at that time. Avascular necrosis of the proximal portion of the bone is the major complication. Manage with internal fixation for displaced or angulated fractures, otherwise splinting and ortho follow-up."
)

let greenstickFracture = InjuryView(
    views: [lateralWrist],
    injuryMasterTitle: "Greenstick Fracture",
    injuryAttribution: ["Case courtesy of Dr Hani Salam\nRadiopaedia.org, rID: 13297"],
    overviewText: "An incomplete long bone fracture in children.",
    findingsText: "The fracture does not go all the way through the bone. One side has a cortical break, the other side has a bend or angulation in the cortex.",
    managementText: "Usually closed reduction and splinting."
)

let torusFracture = InjuryView(
    views: [paWrist],
    injuryMasterTitle: "Torus Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 8433"],
    overviewText: "An incomplete compression fracture of a long bone, most commonly seen in children 5-10 years old.",
    findingsText: "One side of the cortex is bulged, while the other is smooth.",
    managementText: "Non-operative management. If angulation is severe, consider splinting and orthopedic follow up."
)

let lunateDislocation = InjuryView(
    views: [lateralWrist],
    injuryMasterTitle: "Lunate Dislocation",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 9906"],
    overviewText: "An uncommon dislocation resulting from loading trauma to the dorsiflexed wrist. Patients present with wrist pain and palmar swelling, and fingers often held in partial flexion.",
    findingsText: "The lunate is dislocated palmarly, with the rest of the carpal bones maintaining proper alignment to the radius. The lunate does not articulate with either the capitate or radius, distinguishing it from the more common perilunate dislocation in which alignment with the radius is preserved.",
    managementText: "Urgent reduction and surgery is required to repair the torn ligaments to minimize risk of future joint dysfunction."
)

let perilunateDislocation = InjuryView(
    views: [lateralWrist],
    injuryMasterTitle: "Perilunate Dislocation",
    injuryAttribution: ["Case courtesy of Dr Alexandra Stanislavsky\nRadiopaedia.org, rID: 10684"],
    overviewText: "A relatively common carpal dislocation occuring after trauma involving a loading force to a hyperextended wrist. Median nerve damage is sometimes present.",
    findingsText: "The capitate is dislocated dorsally from the cup of the lunate, but the lunate articulates normally with the radius. Scaphoid fractures are present in over 50% of perilunate dislocations.",
    managementText: "Open reduction and ligament repair. Long term risk of arthritis is greater than 50%."
)

let triquetralFracture = InjuryView(
    views: [lateralWrist],
    injuryMasterTitle: "Triquetral Fracture",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 16046"],
    overviewText: "One of the most common carpal fractures. Typically caused by a fall onto outstretched hand (FOOSH).",
    findingsText: "A fragment of bone is usually seen lying dorsally to the rest of the carpal bones.",
    managementText: "Surgery is only required for persistant symptomatic injuries."
)

let nondisplacedRadiusFracture = InjuryView(
    views: [paWrist],
    injuryMasterTitle: "Non-Displaced Radius Fracture",
    injuryAttribution: [],
    overviewText: "",
    findingsText: "",
    managementText: ""
)

//Hand

let malletFinger = InjuryView(
    views: [obliqueHand],
    injuryMasterTitle: "Mallet Finger",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 14222"],
    overviewText: "A disruption of the extensor tendon at the DIP joint. Caused by trauma involving sudden flexion at the DIP joint, such as jamming a finger on a basketball. The patient will be unable to extend the finger at the DIP joint, and the joint will be held in slight flexion.",
    findingsText: "Mallet finger can involve a bony avulsion or can be limited to the tendon. An avulsion will appear as a triangular fragment at the dorsal side of the base of the distal phalanx.",
    managementText:"Splint the finger in fixed hyperextension at the DIP joint. If untreated, this can progress to a swan neck deformity, which require corrective surgery."
)

let volarPlateFracture = InjuryView(
    views: [obliqueHand],
    injuryMasterTitle: "Volar Plate Fracture",
    injuryAttribution: ["Case courtesy of Dr Charlie Chia-Tsong Hsu\nRadiopaedia.org, rID: 20187"],
    overviewText: "An avulsion injury of the middle phalanx. It is caused by hyperextension at the PIP joint.",
    findingsText: "An avulsion fragment is seen on the volar (palmar) side of the base of the middle phalanx. A significant fracture can be associated with dorsal dislocation of the middle phalanx. The fracture should be described using the Eaton criteria (see below).",
    managementText:"For Eaton classes 1-3A that are reducible with less than 30 degrees of flexion, conservative management is best. Splint the PIP joint in 20-30 degrees of flexion. For Eaton class 3B injuries, or for non-reducible fractures, operative management is best.",
    otherTitle: "\n\nEaton Classification:\n",
    otherText: "\u{2022}Type I: No dislocation or avulsion fragment.\n\u{2022}Type II: Dorsal dislocation at PIP joint, no avulsion fragment.\n\u{2022}Type IIIA: Avulsion fragment that takes up less than 40% of the articular surface.\n\u{2022}Type IIIB: Avulsion fragment that takes up 40% or more of the articular surface."
)

let boxersFracture = InjuryView(
    views: [paHand],
    injuryMasterTitle: "Boxer Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 35896"],
    overviewText: "Fracture of the 5th metacarpal neck. Usually caused by punching a solid surface like a wall (and never by boxers, as it's the result of poor technique)",
    findingsText: "Typically these are transverse fractures through the 5th metacarpal neck. The distal fragment typically has palmar angulation.",
    managementText:"Often closed reduction and an ulnar gutter splint for 2-3 weeks is sufficient, but K-wire fixation can yield better cosmetic results. If treating conservatively, ensure there is no rotational deformity, as this will lead to long-term disability."
)

let simplePhalanxMetacarpalFracture = InjuryView(
    views: [paHand],
    shortInjuryTitle: ["Phalanx Fracture"],
    injuryMasterTitle: "Phalanx/ Metacarpal Fracture",
    injuryAttribution: ["Case courtesy of Dr Tom O'Graphy\nRadiopaedia.org, rID: 41772"],
    overviewText: "A simple break across either a phalanx or a metacarpal. Common injuries occuring as a result of either sports or crush trauma.",
    findingsText: "They can be intra- or extra-articular, and are not infrequently open fractures.",
    managementText:"For non-displaced distal phalanx fractures, splints immobilizing the PIP and DIP joints are preferred. For more proximal fractures, splints also need to immobilize the MCP joints and the wrist. Operative management may be required if fractures are unstable, if there is rotation, or if the fracture is open."
)

let bennettsFracture = InjuryView(
    views: [paHand],
    injuryMasterTitle: "Bennett Fracture",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 8803"],
    overviewText: "A two-part fracture-dislocation of the base of the thumb.",
    findingsText: "An intra-articular fracture of the first metacarpal. The remainder of the first metacarpal is dislocated dorsally and laterally. If the fracture is comminuted (has more than 2 parts) the injury is termed a Rolando fracture.",
    managementText:"If displacement is greater than 3mm, open reduction and internal fixation is required. Surgery is still an option for less significant displacement, especially if the patient is young, the fracture is in the dominant hand, or their occupation or hobbies rely heavily on their hands."
)

let rolandosFracture = InjuryView(
    views: [paHand],
    injuryMasterTitle: "Rolando Fracture",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 48712"],
    overviewText: "A comminuted basal thumb fracture-dislocation. Caused by trauma to the hand, often in a fistfight.",
    findingsText: "The fracture is comminuted (has more than 2 parts) and is intra-articular. The basal fragment remains aligned with the carpal joint, but the main fragment dislocates dorsally and laterally. A Rolando fracture that is not comminuted is termed a Bennett fracture.",
    managementText:"Open reduction and internal fixation"
)

let extraArticularThumbFracture = InjuryView(
    views: [obliqueHand],
    injuryMasterTitle: "Epibasal Thumb Fracture",
    injuryAttribution: ["Case courtesy of Dr  Mohammad Taghi Niknejad\nRadiopaedia.org, rID: 54135"],
    overviewText: "Also called an epibasal thumb fracture or a pseudo Bennett fracture. Occurs as the result of axial loading of the thumb.",
    findingsText: "Two-piece extra-articular fracture of the base of the first metacarpal.",
    managementText:"If angulation is greater than 30 degrees, they will likely require closed reduction with K-wire internal fixation. If there is less than 30 degrees a thumb spica splint for 4-6 weeks is usually sufficient."
)

let gamekeepersThumb = InjuryView(
    views: [obliqueHand],
    injuryMasterTitle: "Gamekeeper Thumb",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 12734"],
    overviewText: "Also known as skier thumb. Usually caused by forced abduction of the thumb during a fall.",
    findingsText: "Joint space widening or an avulsion fracture at the base of the 1st MCP joint can often be seen.",
    managementText:"Evaluate for Sterner lesion, where the end of the ulnar collateral ligament moves superficial to the adductor pollicis muscle, with US or MRI. Displacement, joint instability, or a sterner lesion all require surgery."
)

let carpometacarpalDislocation = InjuryView(
    views: [paHand],
    injuryMasterTitle: "CMC Joint Dislocation",
    injuryAttribution: ["Case courtesy of Dr Thuan Tzen, Koh\nRadiopaedia.org, rID: 34851"],
    overviewText: "A very common dislocation, most often occuring after punching a hard surface, or a minor trauma such as a fall.",
    findingsText: "Loss of the \"zig-zag\" joint space at the base of the dislocated metacarpals.",
    managementText:"Usually closed reduction with or without traction. If the joint is obviously unstable or closed reduction fails, surgery."
)

//Hip

let mainPelvicRingFracture = InjuryView(
    views: [apPelvis],
    injuryMasterTitle: "Main Pelvic Ring Fracture",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 31718"],
    overviewText: "A serious injury involving disruption of the main pelvic ring. Usually occurs after high-energy trauma, but can be the result of a fall from standing in an elderly osteoporotic patient. These fractures can cause significant pelvic bleeding leading to exsanguination.",
    findingsText: "Since the pelvic ring acts as a single unit, if it is disrupted in one place it is likely disrupted in a second.",
    managementText:"If the patient is suspected of having significant bleeding, options include applying a pelvic binder, IR embolization of pelvic vessels, and REBOA, among others. CT is warranted in almost all cases to obtain better visualization of the fracture. Once stable, most patients will be managed with either internal or external fixation."
)

let pubicRamusFracture = InjuryView(
    views: [apPelvis],
    injuryMasterTitle: "Pubic Ramus Fracture",
    injuryAttribution: ["Case courtesy of Dr Henry Knipe\nRadiopaedia.org, rID: 31586"],
    overviewText: "One of the less common pelvic fractures. Usually caused by high-energy trauma or a fall in an elderly osteoporotic patient.",
    findingsText: "Fracture lines through the pubic rami on either side of the obturator foramen, or a disruption in the contours of the obturator foramen. Check the pelvis carefully for other injuries.",
    managementText:"Isolated pubic ramus fractures are mechanically stable and often can be managed with weight bearing as tolerated."
)

let sacralFracture = InjuryView(
    views: [apPelvis],
    injuryMasterTitle: "Sacral Fracture",
    injuryAttribution: ["Case courtesy of Dr Ian Bickle\nRadiopaedia.org, rID: 47002"],
    overviewText: "Frequently missed fractures that are caused either by high energy trauma or falls from standing in elderly osteoporotic patients. They are commonly associated with neurologic defects.",
    findingsText: "Can see disruptions in the arcuate lines and symmetric foramina, but X-rays only detect 30% of fractures. CT is the definitive study, MRI if there is neurologic compromise.",
    managementText:"If displacement is < 1cm and there is no neurologic compromise, progressive weight bearing is the preferred treatment, +/- orthosis. Operative management for all other sacral fractures."
)

let acetabularFracture = InjuryView(
    views: [apPelvis],
    injuryMasterTitle: "Acetabular Fracture",
    injuryAttribution: ["Case courtesy of Dr Manu Bijoor\nRadiopaedia.org, rID: 49088"],
    overviewText: "Fractures of the hip socket. They are caused by high-energy trauma in the young, and low-energy trauma, like a fall from standing height, in the elderly.",
    findingsText: "Judet views (45 degrees off of the lateral hip view) is the best view for acetabular evaluation. Can see bone fragment or fracture line in acetabulum, or signs of fracture could be more subtle such as asymmetry. CT is the gold standard if acetabular fracture is suspected.",
    managementText:"This injury is best evaluated by orthopedics. Minimally displaced stable fractures with the lesion in a non weight-bearing area may be candidates for protected weight bearing and outpatient follow up. Most, however, will require surgical intervention."
)

let femoralNeckFracture = InjuryView(
    views: [apPelvis, lateralHip],
    injuryMasterTitle: "Femoral Neck Fracture",
    injuryAttribution: ["Case courtesy of Dr Mark Holland\nRadiopaedia.org, rID: 22056", "Case courtesy of Dr Mark Holland\nRadiopaedia.org, rID: 22056"],
    overviewText: "A common fracture after high-energy trauma in the young and low-energy falls in the elderly. The leg will often be held in flexion and external rotation.",
    findingsText: "Disruption of the contours of the femoral head, sclerosis from bone impaction in the femoral neck, or asymmetry of the two femoral heads.",
    managementText:"Since the blood supply for the femoral head is retrograde, fractures of the neck can disrupt its blood supply, thus surgery is needed to prevent avascular necrosis. Risk of AVN is determined using the Delbet Classification.",
    otherTitle: "\n\nDelbet Classification:\n",
    otherText: "\u{2022}Type I: Transphyseal fracture (across the head of the femur). 90% risk of AVN\n\u{2022}Type II: Subcapital fracture (across the base of the femoral head). 50% risk of AVN\n\u{2022}Type III: Transcervical fracture (through narrowest part of femoral neck). 25% risk of AVN.\n\u{2022}Type IV: Intertrochanteric fracture (through greater trochanter). 10% risk of AVN."
)

let posteriorHipDislocation = InjuryView(
    views: [apPelvis],
    injuryMasterTitle: "Posterior Hip Dislocation",
    injuryAttribution: ["Case courtesy of Dr Gagandeep Singh, Radiopaedia.org, rID: 7260"],
    overviewText: "The most common hip dislocation. It's associated with trauma, usually a MVA where the knee is driven into the dashboard.",
    findingsText: "Loss of congruence between the acetabulum and the femoral head. The affected leg is internally rotated and thus the contours of the femurs are not symmetric. 95% of dislocations have concomitant injuries, most commonly acetabular and femoral head fractures.",
    managementText:"Closed reduction within 6 hours, either with a nerve block or with conscious sedation. If a closed reduction cannot be done, emergent surgical reduction. A post-reduction CT is needed in all patients to assess for other injuries."
)

let apophysealAvulsion = InjuryView(
    views: [apPelvis],
    injuryMasterTitle: "Apophyseal Avulsion",
    injuryAttribution: ["Case courtesy of Dr Rajesh Annamalaisamy\nRadiopaedia.org, rID: 15290"],
    overviewText: "A common injury in adolescents and young adults, most commonly from ages 13-25. They often occur as the result of sports like soccer or sprinting involving lots of quick powerful movements. The patient often reports feeling a pop, and can have muscle weakness or a limp in addition to pain.",
    findingsText: "A fragment of avulsed bone at one of the many insertion sites on the pelvis or proximal femur. These include: \n\u{2022}Iliac crest (anterior abdominal wall)\n\u{2022}ASIS (tensor fascia lata and sartorius)\n\u{2022}AIIS (rectus femoris)\n\u{2022}Greater trochanter (hip rotator cuff)\n\u{2022}Lesser trochanter (iliopsoas)\n\u{2022}Ischial tuberosity (hamstrings)\n\u{2022}Inferior pubic ramus (adductors)",
    managementText:"Usually conservative management with rest, crutches, and stretching. If the fragment is displaced more than 3cm or there is painful nonunion after a trial of conservative managemnt, open reduction is indicated."
)

// Knee
let tibialPlateauFracture = InjuryView(
    views: [apKnee, lateralKnee],
    injuryMasterTitle: "Tibial Plateau Fracture",
    injuryAttribution: ["Case courtesy of Mr Andrew Murphy\nRadiopaedia.org, rID: 47796", "Case courtesy of Dr Abhijit Datir\nRadiopaedia.org, rID: 7509"],
    overviewText: "A proximal intra-articular tibia fracture, usually caused by a fall from height or significant impact to the knee.",
    findingsText: "On the AP view, look for an irregular tibial plateau, focal increased density below the plateau, or lateral displacement of the lateral tibial margin. Lateral view can show a fat-fluid level in the suprapatellar bursa. X-ray often underestimates the severity of the injury, and CT or MRI are helpful in visualizing the bony and soft tissue injuries, respectively.",
    managementText:"Fracture reduction with early mobilization is the mainstay of therapy. Inadequate correction results in long term disabilities such as deformities and osteoarthritis."
)

let cruciateLigamentInjury = InjuryView(
    views: [apKnee],
    injuryMasterTitle: "ACL Avulsion Fracture",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 9241"],
    overviewText: "An avulsion fracture at the insertion of the ACL on the tibial spine. Usually caused by a forced hyperextension of the knee, often while playing sports.",
    findingsText: "Fracture or loss of clarity of the tibial spines. As this is a sign of ligamentous damage, MRI is necessary to see the full extent of the injury.",
    managementText:"Surgical repair of the ACL."
)

let patellarFracture = InjuryView(
    views: [apKnee, lateralKnee],
    injuryMasterTitle: "Patella Fracture",
    injuryAttribution: ["Case courtesy of Gerry  Gardner\nRadiopaedia.org, rID: 13916", "Case courtesy of Gerry  Gardner\nRadiopaedia.org, rID: 13916"],
    overviewText: "A common fracture, usually resulting from direct trauma to the knee, for example in an MVA or a fall. Suspect this if there is localized pain over the patella, and especially if the patient is unable to fully extend the knee.",
    findingsText: "The fracture is most commonly transverse, but can be comminuted as well. These can be difficult to appreciate on AP radiograph due to the superimposed femur. A patellar view can be helpful in some cases. A fat-fluid level can sometimes be seen on lateral view.",
    managementText:"Operative placement of a tension band."
)

let fibularNeckFracture = InjuryView(
    views: [apKnee],
    injuryMasterTitle: "Fibular Neck Fracture",
    injuryAttribution: ["Case courtesy of Dr Matt Skalski\nRadiopaedia.org, rID: 23861"],
    overviewText: "A common injury resulting from a blow to the lateral leg. The common peroneal nerve crosses the fibular neck-- if it's damaged, the patient may have foot drop.",
    findingsText: "If imaging is unrevealing but clinical suspicion is high, an oblique view fully exposes the fibula.",
    managementText:"Surgical repair"
)

let segondFracture = InjuryView(
    views: [apKnee],
    injuryMasterTitle: "Segond Fracture",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 9758"],
    overviewText: "Segond fracture is an avulsion fracture at the insertion of the LCL. Though this is not directly associated with the ACL, 75% of patients with a Segond fracture will have torn their ACL. It usually occurs during a sport involving twisting at the knee, such as skiing or basketball.",
    findingsText: "An avulsion fracture at the lateral margin of the tibia. An MRI should be obtained to categorize the ligamentous injuries.",
    managementText:"Segond fractures are usually associated with serious ligamentous injuries, usually requiring corrective surgery."
)

let salterHarrisFracture = InjuryView(
    views: [obliqueHand, lateralAnkle, paHand, apMorticeAnkle],
    injuryTitle: ["Salter Harris Type I", "Salter Harris Type II", "Salter Harris Type III", "Salter Harris Type IV"],
    injuryMasterTitle: "Salter Harris Fracture",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 30373", "Case courtesy of Dr Hani Salam\nRadiopaedia.org, rID: 9687", "Case courtesy of Dr Aneta Kecler-Pietrzyk\nRadiopaedia.org, rID: 53308", "Case courtesy of Dr Hisham Alwakkaa\nRadiopaedia.org, rID: 57138"],
    dropDownMenu: ["Salter Harris Type I", "Salter Harris Type II", "Salter Harris Type III", "Salter Harris Type IV"],
    overviewText: "Salter-Harris fractures go though the epiphysal growth plate. There are 5 types of fracture (see below). They can occur at any joint in the body involving long bones.",
    findingsText: "In type I, there will be displacement of the epiphysis relative to the physis. The fracture line is through the cartilagenous physis and thus will not be seen. In types II-IV, a fracture will be seen in the bone adjacent to the growth plate. In type V, initial radiographs are often normal, and the diagnosis is made retroactively.",
    managementText:"Prognosis is generally good for types I-IV. Type V carries a worse prognosis but they are also quite rare. Significant physeal involvement, intra-articular fracture are indications for surgical repair. The most feared complication of a Salter-Harris fracture is growth arrest in the affected bone due to growth plate damage. This can cause limb-length discrepancies and functional disabilities.",
    otherTitle: "\n\nSalter-Harris Classification:\n",
    otherText: "The classification has the convenient mnemonic SALTR. It is organized in increasing levels of severity.\n\u{2022}Type I: Slipped. The fracture is entirely within the growth plate, and the epiphysis is displaced relative to the metaphysis.\n\u{2022}Type II: Above. The fracture passes through some of the growth plate, then up through the metaphysis.\n\u{2022}Type III: Lower. The fracture passes through some of the growth plate, then down through the epiphysis.\n\u{2022}Type IV: Through. The fracture passes from the metaphysis through the growth plate and into the epiphysis.\n\u{2022}Type V: Rammed. There is a crush injury to the growth plate, causing widespread destruction of the plate."
)

let supracondylarFemurFracture = InjuryView(
    views: [apKnee],
    shortInjuryTitle: ["Supracondylar Femur Fx"],
    injuryMasterTitle: "Supracondylar Femur Fracture",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 8790"],
    overviewText: "A femoral shaft fracture is usually caused by significant trauma, though they can result from a fall in an osteoporotic patient. They are commonly associated with femoral neck fractures, which are often missed.",
    findingsText: "A fracture of the shaft of the femur is usually evident.",
    managementText:"Usually will present with a trauma activation, so start with ACLS. Patient can lose up to 1.5L of blood into the thigh in a closed femur fracture. A full neurovascular exam is imperative before reduction. Closed reduction and long leg casting can be used in patients who have a nondisplaced fracture with surgical conraindications. Otherwise surgery (specifically anterograde intramedullary nail with reamed technique) is the gold standard."
)

let patellarTendonRupture = InjuryView(
    views: [lateralKnee],
    injuryMasterTitle: "Patellar Tendon Rupture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 7514"],
    overviewText: "Patellar tendon rupture most commonly occurs in young athletes, especially those whose sports involve jumping. Local steroid injections for jumper's knee is another risk factor. It can, however, occur in any age group. The patient will often have felt a popping sensation and will have significantly weak extension at the knee.",
    findingsText: "The most common sign on radiograph is patella alta, or high-riding patella. If the distance between the patella and tibial tubercle is more than 1.2x the height of the patella (also known as the Insall-Salvati ratio), the diagnosis of patella alta is made. An avulsion fracture on the inferior patella may also be present.\n\nNote that patella alta can be idiopathic and asymptomatic, but if there is clinical suspicion of a tendon rupture it is virtually diagnostic. The sample image has borderline patella alta, but the patient did not have symptoms of tendon rupture.",
    managementText:"Surgical repair of the ruptured tendon."
)

//Ankle
let distalFibulaFracture = InjuryView(
    views: [apMorticeAnkle],
    injuryMasterTitle: "Distal Fibula Fracture",
    injuryAttribution: ["Case courtesy of Dr Henry Knipe\nRadiopaedia.org, rID: 39157"],
    overviewText: "The most common type of ankle fracture. Usually occurs as the result of ankle inversion. If there was rotation at the joint as well the fracture is more likely to be complex and may involve the proximal fibula as well. Patients will present with pain, swelling, and tenderness at the ankle along with an inability to bear weight. The Ottawa ankle rule can be helpful when determining who to image.",
    findingsText: "The fracture is usually evident. Other than the fracture line, the tibio-fibular or ankle mortice joint spaces may be widened. Distal fibular fractures can be classified based on the Weber system (see below). If there is joint space widening but no fracture, consider ligamentous injuries such as a deltoid ligament tear or a tibio-fibular interosseous membrane tear.",
    managementText:"If there is less than 3mm of displacement, no joint space widening, and the fracture is isolated to the lateral malleolus, casting and conservative management. Otherwise open reduction and internal fixation.",
    otherTitle: "\n\nWeber Classification:\n",
    otherText: "This is based on the position of the fracture relative to the distal tibio-fibular joint (syndesmosis)\n\u{2022}Type A: Below the syndesmosis. These fractures are usually stable.\n\u{2022}Type B: At the level of the syndesmosis. Sometimes unstable.\n\u{2022}Type C: Above the syndesmosis. Unstable."
)
/*
 let distalTibiaFracture = InjuryView(
 injuryImages: [UIImage(named: " Unmarked.jpg")!],
 injuryImagesMarked: [UIImage(named: " Marked.jpg")!],
 injuryTitle: [""],
 injuryAttribution: [""],
 overviewText: "",
 findingsText: "",
 managementText:"",
 otherTitle: "",
 otherText: ""
 )
 */
let talusFracture = InjuryView(
    views: [lateralAnkle, obliqueFoot],
    injuryMasterTitle: "Talar Neck Fracture",
    injuryAttribution: ["Case courtesy of Mr Andrew Murphy\nRadiopaedia.org, rID: 48883", "Case courtesy of Dr Charlie Chia-Tsong Hsu\nRadiopaedia.org, rID: 18235"],
    overviewText: "A relatively common fracture, usually caused by hyperdorsiflexion.",
    findingsText: "Cortical disruptions or fracture lines may be visible on the lateral ankle or oblique foot views.",
    managementText:"Based on severity. Type I fractures (see below) can be treated with a cast or boot and no weight bearing. Types II and III require open reduction and internal fixation.",
    otherTitle: "\n\nHawkins Classification:\n",
    otherText: "\n\u{2022}Type I: Nondisplaced talar neck fracture\n\u{2022}Type II: Displaced talar neck fracture with dislocation at the subtalar joint but a normal ankle mortice.\n\u{2022}Type III: Displaced talar neck fracture with dislocation at both the subtalar and ankle joints."
)

let talonavicularJointDislocation = InjuryView(
    views: [lateralAnkle],
    injuryMasterTitle: "Talonavicular Dislocation",
    injuryAttribution: ["Case courtesy of Dr Henry Knipe\nRadiopaedia.org, rID: 28676"],
    overviewText: "A dislocation associated with severe trauma to the foot, either forced ABduction or ADduction.",
    findingsText: "The talonavicular joint space will not be preserved, and dislocation is usually obvious. There may be associated calcaneocuboid dislocation and fractures of the calcaneus, cuboid, or navicular bones, in which case the injury is termed a Chopart fracture-dislocation.",
    managementText:"Closed reduction and non-weight bearing cast for 4-6 weeks. If this fails, open reduction is indicated."
)

let calcanealFracture = InjuryView(
    views: [lateralAnkle],
    injuryMasterTitle: "Calcaneal Fracture",
    injuryAttribution: ["Case courtesy of Radswiki\nRadiopaedia.org, rID: 11269"],
    overviewText: "These fractures typically result from axial loading, typically a fall from height.",
    findingsText: "The fracture are often evident, though an axial calcaneal projection might be necessary to fully visualize the injury. Bohler's angle is made between the tangent lines of the superior anterior and superior posterior prominences and the superior point of the midpoint of the calcaneus. This is normally 20-40 degrees, but is often reduced to less than 20 degrees when there is a calcaneus fracture.\n\nAn extra-articular calcaneal body fracture is termed a lover's fracture because it's often caused by jumping from a second story window (for example when her husband comes home). If a patient has bilateral calcaneal fractures or a lover's fracture, the spine should be assessed for signs of fracture secondary to axial loading.\n\nCT is recommended for operative staging.",
    managementText:"Management depends on the Sanders criteria, which require a CT. Generally, small extra-articular fractures and nondisplaced intraarticular fractures can be treated with cast immobilization, while more complex fractures will require either closed reduction and percutaneous pinning or open reduction and internal fixation."
)

let fifthMetatarsalAvulsionFracture = InjuryView(
    views: [obliqueFoot],
    shortInjuryTitle: ["5th Metatarsal Avulsion Fx"],
    injuryMasterTitle: "5th Metatarsal Avulsion Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 12765"],
    overviewText: "Also known as a pseudo-Jones fracture, this is by far the most common injury to the base of the 5th metatarsal, and is often confused with its much more serious relative the Jones fracture. It typically occurs from a sudden ankle inversion while in plantar flexion, such as when climbing stairs.",
    findingsText: "This is an avulsion fracture at the site of the insertion of the peroneus brevis on the base of the 5th metatarsal. The fracture line is usually evident.",
    managementText:"Conservative management with protected weight bearing in a boot is usually sufficient."
)

let jonesFracture = InjuryView(
    views: [obliqueFoot],
    injuryMasterTitle: "Jones Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 12641"],
    overviewText: "Unlike the much more common pseudo-Jones fracture, this is an extra-articular fracture at the base of the 5th metatarsal.",
    findingsText: "The fracture line is usually visible on plain film. It is an extra-articular transverse fracture of the proximal 5th metatarsal.",
    managementText:"Initial therapy is a non weight-bearing cast for 6-8 weeks. If there is still non-union after this, internal fixation is required."
)

let medialLigamentTear = InjuryView(
    views: [apMorticeAnkle],
    injuryMasterTitle: "Deltoid Ligament Tear",
    injuryAttribution: ["Case courtesy of Dr Maulik S Patel\nRadiopaedia.org, rID: 10076"],
    overviewText: "The deltoid ligament stabilizes the medial side of the ankle joint. It can be torn in an eversion or pronation injury.",
    findingsText: "The medial side of the ankle mortice will be widened. These ligamentous injuries are often associated with fibular fractures, as in this example.",
    managementText:""
)

let osteochondralDefect = InjuryView(
    views: [apMorticeAnkle, apKnee],
    injuryTitle: ["Talar Osteochondral Defect", "Femoral Osteochondral Defect"],
    shortInjuryTitle: ["Talar OC Defect", "Femoral OC Defect"],
    injuryMasterTitle: "Osteochondral Defect",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 17098", "Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 8442"],
    dropDownMenu: ["Talar Defect", "Femoral Defect"],
    overviewText: "Chronic defects in bone the bone and cartilage at a joint, which can lead to joint instability and dislocation. They usually occur in pediatric athletes with multiple minor prior traumas to the joint. The most common sites are the femoral condyles, the humeral head, the humeral capitellem, and the talus",
    findingsText: "A defect on the surface of the bone can sometimes be seen on plain film, however all osteochondral defects are better characterized on MRI.",
    managementText:"Treatment is surgical, ranging from chondral shaving to joint replacement depending on the size of the lesion and associated degenerative changes."
)

//Foot
let lisfrancInjury = InjuryView(
    views: [apFoot],
    injuryMasterTitle: "Lisfranc Injury",
    injuryAttribution: ["Case courtesy of Radswiki\nRadiopaedia.org, rID: 11581"],
    overviewText: "A dislocation at the tarsal-metatarsal joint. The most common foot dislocation. It is commonly caused by loading a plantar flexed foot or by a crush injury",
    findingsText: "There will be misalignment at the tarsal-metatarsal joint, most commonly at either the second or third metatarsal. The frontal and oblique views are best at picking up second or third metatarsal dislocations, respectively. CT is needed to check for more subtle fractures or ligamentous injuries that may not appear on plain films.",
    managementText:"Open reduction and internal fixation is the most common treatment."
)

let metatarsalOrPhalanxFracture = InjuryView(
    views: [apFoot],
    injuryMasterTitle: "Metatarsal or Phalanx Fx",
    injuryAttribution: ["Case courtesy of Dr Ian Bickle\nRadiopaedia.org, rID: 47362"],
    overviewText: "The most common fractures of the foot. They most often occur when the forefoot is flexed and the hindfoot is rotating, but can also be the result of direct trauma to the foot.",
    findingsText: "The fracture is usually evident. Ensure that there is no Lisfranc injury or Jones fracture, as those are more serious and usually require surgical intervention.",
    managementText:"For phalanx fractures, conservative treatment is usually effective. Buddy taping may reduce pain. For metatarsal fractures, a boot with weight bearing is acceptable for nondisplaced 1st metatarsal fractures and 2nd through 4th metatarsal fractures that are nondisplaced or minimally displaced. If there any displacement of a 1st metatarsal fracture or > 4mm displacement of a 2nd through 4th metatarsal fracture, open reduction and internal fixation is required. If the 5th metatarsal is fractured, see Jones fracture or 5th metatarsal avulsion fracture."
)

// C Spine
let odontoidPegFracture = InjuryView(
    views: [lateralCSpine, apPegCSpine],
    injuryMasterTitle: "Odontoid Peg Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 8452", "Case courtesy of Gerry  Gardner\nRadiopaedia.org, rID: 13949"],
    overviewText: "Also known as a dens fracture or an odontoid process fracture. Can be caused by a fall in the elderly, or trauma to the head in the young. Either a flexion or extension injury can fracture the odontoid process. Patients will present with neck pain that is worse with motion. Neurological findings are rare.",
    findingsText: "On the lateral film, the peg will not align properly with the body of C2. In addition C1 may be anteriorly or posteriorly displaced, interrupting the spinolaminar line. On the odontoid view, the peg will not be symmetrically spaced between the lateral masses of C1, and may be tilted to one side. CT is the study of choice to better classify the fracture pattern.",
    managementText:"This depends on the type of fracture (the most common is the Anderson and D'Alonzo classification (see below). Cervical collar is recommended for Type I fractures, Type II fractures in the elderly, and Type III fractres with minimal displacement. Halo vest is recommended for Type II fractures in younger patients. Surgical intervention is recommended for Type II fractures with risk factors for nonunion and Type III fractures with significant displacement.",
    otherTitle: "Anderson and D'Alonzo Classification:",
    otherText: "\n\u{2022}Type I: Fracture of the upper peg, above the level of the transverse ligament. Stable.\n\u{2022}Type II: Fracture through the base of the peg. Most common. Unstable.\n\u{2022}Type III: Fracture down through the peg and into the lateral mass of C2. Stable if there is not a lot of displacement. Good prognosis."
)

let transverseLigamentRupture = InjuryView(
    views: [lateralCSpine, apPegCSpine],
    shortInjuryTitle: ["Transverse Lig. Rupture", "Transverse Lig. Rupture"],
    injuryMasterTitle: "Transverse Ligament Rupture",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 9601", "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 9601"],
    overviewText: "The transverse ligament of the atlas (C1) holds the odontoid peg of C2 in place. When this ligament ruptures, there is significant atlanto-axial instability, which can lead to subluxation or dislocation. It can be caused by trauma (such as in a Jefferson Fracture), or can be related to multiple hereditary conditions, most commonly Down Syndrome. Patients will usually present with neck pain and impaired rotation of the neck.",
    findingsText: "On AP peg view, the lateral masses of C1 will not align with the lateral masses of C2 and the odontoid peg will not be centered between the lateral masses of C1. If the lateral masses are offset by a total of 7mm or greater, the transverse ligament is almost certainly ruptured. On lateral view there can be separation of more than 3mm between the odontoid peg and the anterior arch of C1.\n\nA CT provides the best imaging of the bone, and an MRI may be required as well if there is uncertainty as to the extent of the ligamentous damage.",
    managementText:"Internal fixation of C1 on C2 is usually required to correct a transverse ligament rupture."
)

let jeffersonFracture = InjuryView(
    views: [lateralCSpine, apPegCSpine],
    injuryMasterTitle: "Jefferson Fracture",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 9601", "Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 9601"],
    overviewText: "A Jefferson fracture is a burst fracture of C1, usually caused by a massive axial force such as diving into shallow water.",
    findingsText: "On AP peg view, the lateral masses of C1 will not align with the lateral masses of C2 and the odontoid peg will not be centered between the lateral masses of C1. On lateral view, if the transverse atlantal ligament is ruptured there can be separation of more than 3mm between the odontoid peg and the anterior arch of C1. Widening of the prevertebral soft tissue may also be present, representing hematoma around the injury.\n\nJefferson fracture is commonly associated with other C-spine injuries and head injuries. A CT provides the best imaging of the bone, and an MRI may be required as well if there is suspicion of significant soft tissue injury.",
    managementText:"If the transverse atlantal ligament is intact, conservative treatment with cervical collar immobilization is sufficient. If the ligament is ruptured the injury is unstable, and more aggressive treatments such as halo immobilization or internal fixation are required."
)

let hangmansFracture = InjuryView(
    views: [lateralCSpine],
    injuryMasterTitle: "Hangman's Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 36014"],
    overviewText: "The hangman's fracture is also known as a traumatic spondylolisthesis (anterior subluxation) of the axis. It is caused by traumatic hyperextension, usually in an MVC when the forehead strikes the dashboard. It was seen in judicial hangings, but is very rarely seen in suicidal hangings due to the knot being positioned behind the head. Most patients will present with neck pain but only 25% will have neurological findings.",
    findingsText: "There is bilateral fracture of the pars interarticularis, causing anterior displacement of C2. This shows up as a disruption of the anterior line. CT is needed to fully assess the damage.",
    managementText:"Treatment depends on the Levine-Edwards classification (see below). For Type I, a rigid collar for 4-6 weeks. For Type II, halo immobilization if displacement is < 5 mm, otherwise surgery. For Type IIA, reduction, then compression halo immobilization for 4-6 weeks. For Type III, surgical reduction followed by stabilization.",
    otherTitle: "\n\nLevine-Edwards Classification:\n",
    otherText: "Based on the mechanism of injury.\n\u{2022}Type I: Axial compression and hyperextension\n\u{2022}Type II: Axial compression and hyperextension followed by flexion.\n\u{2022}Type IIA: Flexion and distraction\n\u{2022}Type III: Flextion and distraction followed by hyperextension."
)

let spinousProcessFracture = InjuryView(
    views: [lateralCSpine],
    injuryMasterTitle: "Spinous Process Fracture",
    injuryAttribution: [""],
    overviewText: "Known as a clay shoveler's fracture when the spinous fracture occurs on the lower cervical vertebrae (usually C7). They can be chronic and asymptomatic, or may be assoicated with MVAs, direct trauma to the spine, or other spinal trauma.",
    findingsText: "The fracture line is usually clearly seen. Significant displacement is common.",
    managementText:"Conservative management with rest and NSAIDs. A c-collar may provide symptomatic relief. Surgical excision of the fragment is an option for patients with persistant pain."
)

let compressionFracture = InjuryView(
    views: [lateralLSpine],
    injuryMasterTitle: "Compression Fracture",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 7185"],
    overviewText: "Also known as a wedge fracture, a compression fracture is caused by axial loading of the spine. It can occur anywhere in the spinal column, but is most common in the lumbar spine. The most common cause of a compression fracture is mild trauma in the setting of osteoporosis. Focal spinal tenderness is common, but neurological findings are very rare.",
    findingsText: "The anterior and posterior heights of the affected vertebral body will differ by 20% or more. Usually the anterior aspect of the vertebral body will be affected, causing it to be shorter than the posterior aspect. If the posterior ligamentous complex is disrupted a facet joint dislocation may be seen.",
    managementText:"Conservative treatment is appropriate if there is no evidence for posterior ligamentous complex damage on radiographs. If posterior ligament damage is suspected, an MRI should be ordered to confirm. If it is indeed damaged, surgical decompression and stabilization is warranted. Kyphoplasty is indicated if 6 weeks of conservative treatment fails."
)

let unilateralFacetDislocation = InjuryView(
    views: [lateralCSpine],
    shortInjuryTitle: ["Unilateral Facet Disloc."],
    injuryMasterTitle: "Unilateral Facet Dislocation",
    injuryAttribution: ["Case courtesy of Dr Abhijit Datir\nRadiopaedia.org, rID: 35839"],
    overviewText: "An orthopedic emergency if deficits are present. A dislocation injury of the spine in which the inferior articulating facet of one vertebra becomes locked behind the superior articulating facet of the vertebra beneath it. It is caused by a flexion-distraction injury with a rotational component. It is commonly associated with neurological findings.",
    findingsText: "On lateral view, the affected vertebra will have some anterior subluxation, causing a disruption of the anterior, posterior, or spinolaminar lines. On AP view, the spinous processes will not be vertically aligned. CT is essential for complete evaluation of the injury.",
    managementText:"Immediate closed reduction can be attempted in an awake, cooperative patient with neurological deficits. This should be followed immediately with an MRI and surgical stabilization. If the patient has mental status changes, never perform a closed reduction. Get a stat MRI and then proceed to operative reduction."
)

let hyperflexionTeardropFracture = InjuryView(
    views: [lateralCSpine],
    shortInjuryTitle: ["Hyperflexion Teardrop Fx"],
    injuryMasterTitle: "Hyperflexion Teardrop Fracture",
    injuryAttribution: ["Case courtesy of Dr Matt Skalski\nRadiopaedia.org, rID: 53841"],
    overviewText: "The worst cervical spine fracture. It occurs from severe flexion and axial loading, most often from diving into shallow water or from an MVA. It often causes quadriplegia or anterior cervical cord syndrome.",
    findingsText: "The injury is most commonly at C5/C6. A lateral film can show fractures at the anterior inferior aspect of the vertebral bodies, widening of the space between the spinous processes, loss of the normal curvature of the spine, and loss of vertebral body height. Paravertebral soft tissue widening representing a hematoma may be present as well. CT and MRI should be performed to further evaluate the injury.",
    managementText:"Surgical decompression and stabilization is the mainstay of therapy. Prognosis is poor, and most patients end up with neurological deficits if not quadriplegia."
)

let anteriorCervicalSubluxation = InjuryView(
    views: [longAPCSpine],
    shortInjuryTitle: ["Ant. Cervical Subluxation"],
    injuryMasterTitle: "Anterior Cervical Subluxation",
    injuryAttribution: ["Case courtesy of Dr Jeremy Jones\nRadiopaedia.org, rID: 7185"],
    overviewText: "This is a ligamentous sprain, often caused by hyperflexion. Patients usually present with neck pain.",
    findingsText: "On the long AP view, the spinous processes will not be evenly spaced. This is because when the vertebra subluxes, it tilts, increasing the interspinous distance. On lateral view, anterior subluxation of a vertebra may be noted, with the spinous process angled superiorly. A wedge fracture may be present as well.",
    managementText:"Anterior subluxation is an unstable injury and usually requires surgical correction."
)

// L Spine
let burstFracture = InjuryView(
    views: [lateralLSpine, apLSpine],
    injuryMasterTitle: "Burst Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 4635", "Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 4635"],
    overviewText: "Burst fractures are compression fractures that usually occur in the lumbar spine. They are the result of traumatic axial loading, usually a fall from height or an MVA.",
    findingsText: "On AP radiographs, the pedicles are widened at the level of injury. On lateral view, there is loss of vertebral height and sometimes a fracture line is visible. CT is necessary for accurate description and staging of the injury.",
    managementText:"Depends on the TLICS score (see below). < 4 points: consider conservative treatment with ambulation as tolerated and a back brace for symptomatic control. 4 points: consider conservative or surgical decompression and stabilization. > 4 points: Surgical treatment.",
    otherTitle: "\n\nThoraco-Lumbar Injury Classification and Severity Score:",
    otherText: "\n\u{2022}Injury morphology:\nCompression or burst (1 point)\nRotation or translation (3 points)\nDistraction (4 points)\n\u{2022}Neurologic status:\nIntact (0 points)\nNerve root symptoms (2 points)\nComplete spinal cord injury (2 points)\nIncomplete spinal cord injury (3 points)\nCauda Equina syndrome (4 points)\n\u{2022}Posterior ligamentous complex integrity:\nIntact (0 points)\nSuspected or indeterminate (2 points)\nDisrupted (3 points)"
)

let flexionDistractionInjury = InjuryView(
    views: [lateralLSpine],
    injuryMasterTitle: "Flexion-Distraction Injury",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 45345"],
    overviewText: "Also known as a Chance fracture or a seatbelt fracture. These fractures are caused when there is spine hyperflexion. The most common mechanisms are an MVA when the patient is restrained with only a lap belt (no shoulder belt), or a fall from height. Flexion-distraction injuries are commonly associated with injuries to the pancreas, duodenum, or other abdominal organs.",
    findingsText: "On lateral films there is a wedge fracture of the vertebral body with either a fracture through or a distraction of the facets and spinous processes.",
    managementText:"If there is damage to multiple columns of the spine, the injury is unstable and requires operative decompression and stabilization. If the posterior elements of the vertebrae are intact and there are no neurologic deficits, the back may be braced in extension with close orthopedic follow up."
)

let lumbarFractureDislocationInjury = InjuryView(
    views: [lateralLSpine],
    shortInjuryTitle: ["Vertebral Fx-Dislocation"],
    injuryMasterTitle: "Vertebral Fracture-Dislocation",
    injuryAttribution: ["Case courtesy of Dr Andrew Dixon\nRadiopaedia.org, rID: 45345"],
    overviewText: "Posterior vertebral dislocation associated with vertebral fractures, typically at the thoraco-lumbar junction. Vertebral fracture-dislocations typically occur as a result of high-energy trauma such as MVAs or falls from height. They are associated with spinal cord injuries about 50% of the time.",
    findingsText: "Posterior displacement of a vertebra near the thoraco-lumbar junction will be visible, along with vertebral fractures. CT and MRI are both needed for optimum bone and spinal cord visualization, respectively.",
    managementText:"This is a very unstable and serious injury requiring urgent surgical correction. The most common approach is a posterior open reduction with instrumented fusion, followed by postop CT or MRI."
)

let transverseProcessFracture = InjuryView(
    views: [apLSpine],
    shortInjuryTitle: ["Transverse Process Fx"],
    injuryMasterTitle: "Transverse Process Fracture",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 4635"],
    overviewText: "A minor, stable, lumbar fracture that commonly occurs after trauma, especially trauma involving extreme rotation.",
    findingsText: "The transverse process fracture can be subtle, but can sometimes be seen with careful windowing on plain film. CT is the imaging modality of choice. Transverse process fractures are often associated with other spinal injuries, so if one is identified the entire film should be carefully examined.",
    managementText:"Usually nonsurgical and conservative, with motion as tolerated."
)

// Chest
let pneumonia = InjuryView(
    views: [frontalChest, lateralChest, frontalChest],
    injuryTitle: ["Right Middle Lobe Pneumonia", "Right Middle Lobe Pneumonia", "Atypical Pneumonia"],
    injuryMasterTitle: "Pneumonia",
    injuryAttribution: ["Case courtesy of Dr Roberto Schubert\nRadiopaedia.org, rID: 16074", "Case courtesy of Dr Roberto Schubert\nRadiopaedia.org, rID: 16074", "Case courtesy of Dr Roberto Schubert\nRadiopaedia.org, rID: 17327"],
    dropDownMenu: ["RML Pneumonia: Frontal", "RML Pneumonia: Lateral", "Atypical Pneumonia"],
    overviewText: "An infection in the lung which typically causes consolidation. It is most common in the elderly and the immunocompromised but can affect any age group.",
    findingsText: "Typical pneumonia will have localized consolidation, sometimes confined to one lobe. Atypical pneumonia appears as patchy interstitial (nodular and linear) infiltrates. If the pneumonia is lobar, its location can be determined by the blurring of adjacent borders. For example, the right lower lobe borders the diaphragm, and thus RML pneumonia will cause the right hemidiaphragm border to appear hazy.",
    managementText:"Antibiotics is the mainstay of therapy. The choice of antibiotic therapy is outside the scope of this app and depends on the patient's risk factors, severity of the disease, and the suspected causative organism, among other factors."
)

let aspiratedForeignBody = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Aspirated Foreign Body",
    injuryAttribution: ["Case courtesy of Dr Angela Byrne\nRadiopaedia.org, rID: 8128"],
    overviewText: "A common injury in young children. Usually present with shortness of breath. The caregivers may or may not be aware that the child has inhaled anything.",
    findingsText: "The affected lung is usually hyperinflated due to air trapping. This can be accentuated on a lateral decubitus film with the affected lung down. It is very uncommon to see a foreign body on plain film, as most are radiolucent.",
    managementText:"Removal of the foreign body via bronchoscopy, usually."
)

let tensionPneumothorax = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Tension Pneumothorax",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 10558"],
    overviewText: "A tension pneumothorax forms when air can enter the pleural space, but cannot escape. The pneumothorax can eventually build up to the point where it compresses the vena cava, impairing blood flow to the heart and thus leading to shock. Patients present with shortness of breath or in cardiac arrest, usually following trauma. On physical exam, there will be hyperresonance of the affected lung, high JVD, absent breath sounds on the affected side, and a deviated trachea.",
    findingsText: "Do not get an x-ray in an unstable patient who you suspect of having a tension pneumothorax-- this is a clinical diagnosis. On plain films, the trachea and mediastinum will be shifted away from the side of the pneumothorax. Additionally, the lung on the side of the pneumo will be collapsed. The pleural line will be visible a significant distance from the chest wall, and in between the two will be empty space with no lung vascular markings",
    managementText:"Emergency needle decompression in the second intercostal space at the midclavicular line, followed by a chest tube in the fourth intercostal space at the midaxillary line. A rush of air with needle insertion indicates that decompression has occured."
)

let openPneumothorax = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Open Pneumothorax",
    injuryAttribution: ["Case courtesy of Dr M Osama Yonso\nRadiopaedia.org, rID: 18975"],
    overviewText: "An open pneumothorax forms when air enters the pleural space, but there is not a one-way valve that leads to a tension pneumothorax. These can be spontaneous (especially in tall, thin patients), or secondary to underlying lung pathology or trauma. Patients will usually present with shortness of breath or chest pain. Physical exam reveals diminished breath sounds on the affected side as well as a non-deviated trachea and no JVD (differentiating it from a tension pneumothorax).",
    findingsText: "On plain film, the pleural line will be seen separated from the chest wall (parietal pleura).",
    managementText:"Placement of a chest tube in the fourth intercostal space at the midaxillary line."
)

let pleuralEffusion = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Pleural Effusion",
    injuryAttribution: ["Case courtesy of Dr Ian Bickle\nRadiopaedia.org, rID: 50364"],
    overviewText: "A collection of fluid in the pleural space. This ranges from pyothorax (infection and purulent fluid) to hemothorax (blood) to transudative (caused by fluid shift). The causes, and the distinction between transudative and exudative effusions, are important to know but are beyond the scope of this app.",
    findingsText: "There will be a dependent layer of fluid in one or both pleural spaces. If small, it may appear only as blunting of the costophrenic angles, but it can also be so large that it fills an entire side of the pleural cavity. If infected, the effusion may appear loculated.",
    managementText:"Management ranges from observation for an asympmtomatic effusion, to tapping the fluid to determine its etiology, to placing a chest tube for drainage. The correct course of action depends on the patient's presentation and the probable cause of the effusion."
)

let aorticDissection = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Aortic Dissection",
    injuryAttribution: ["Case courtesy of Dr Wayland Wang\nRadiopaedia.org, rID: 50763"],
    overviewText: "An aortic dissection is a separation of the intima of the aorta from the media. The most common risk factors are chronic hypertension, connective tissue disorders, and pregnancy. Patients classically present with a tearing chest pain that radiates to the back and migrates inferiorly as the dissection progresses. They can also show signs of cardiac tamponade if the dissection tracks backwards and surrounds the heart. Neurologic signs or other signs of organ dysfunction can indicate that other vessels have become occluded or are dissecting.",
    findingsText: "On plain film, a widened aortic knob (>8cm on portable film) is the most common sign. An irregular aortic contour may also be seen.",
    managementText:"Get a CT angiogram for definitive diagnosis. If it's a Type A dissection (involves the ascending aorta), usually manage surgically. If it's type B (does not involve the ascending aorta), usually manage medically."
)

let heartFailure = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Heart Failure",
    injuryAttribution: ["Case courtesy of A.Prof Frank Gaillard\nRadiopaedia.org, rID: 29092"],
    overviewText: "Congestive heart failure (CHF) has many etiologies and many manifestations. It is generally divided into heart failure with preserved ejection fraction (HFpEF) and heart failure with reduced ejection fraction (HFrEF",
    findingsText: "The cardiac silhouette can be enlarged to more than 50% of the width of the chest on the PA view. Pulmonary edema may also be present, as well as prominence of the pulmonary vasculature. If the vessels are especially visible towards the apex of the lung, this is termed cephalization and reflects elevated left atrial pressures.",
    managementText:"Management of heart failure is quite complex and is beyond the scope of this app."
)

let nodule = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Pulmonary Nodule",
    injuryAttribution: ["Case courtesy of Dr Ayush Goel\nRadiopaedia.org, rID: 29150"],
    overviewText: "Pulmonary nodules have many etiologies, including malignancy, rheumatoid nodule, granuloma, and more.",
    findingsText: "Nodules can be single or multiple, and may be difficult to visualize. If they overlie the cardiac silhouette or are behind a dome of the diaphragm they might only be seen on lateral view.",
    managementText:"An important part in the workup of a pulmonary nodule is comparing the film to a prior X-ray, if available. After that the workup may involve further imaging, a biopsy, or monitoring. The full management algorithm is beyond the scope of this app."
)

let perforatedViscus = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Perforated Viscus",
    injuryAttribution: ["Case courtesy of Dr Sajoscha Sorrentino\nRadiopaedia.org, rID: 14866"],
    overviewText: "When any piece of the digestive tract ruptures, it is a surgical emergency. If the rupture occurs in or distal to the stomach, air can be introduced to the abdominal cavity. Patients will typically have a peritonitic abdomen, with abdominal rigidity and severe pain.",
    findingsText: "On an upright chest or abdominal X-ray, free air will rise until it is just under the diaphragm. The diaphragm will appear as a thin line of muscle with air on both sides, as opposed to a boundary between the air of the lungs and the soft tissue of the abdomen.",
    managementText:"Abdominal free air represents a surgical emergency, and patients with this finding should be taken to the OR for an emergent exploratory laparotomy."
)

let ribFracture = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Rib Fracture",
    injuryAttribution: ["Case courtesy of Dr Henry Knipe, Radiopaedia.org\nrID: 30699"],
    overviewText: "Rib fractures typically occur as a result of high-energy trauma in the young, or low energy trauma (such as a fall from height) in the elderly. Posterior rib fractures in a child are often the result of non-accidental trauma, usually an infant being squeezed in two hands. If three or more consecutive ribs are broken in two or more spots, there is risk for a flail chest, in which a section of chest wall moves ",
    findingsText: "Nondisplaced rib fractures are easy to miss, but will usually appear as lucent fracture lines. Ultrasound and CT can be used to detect fractures if X-rays are unrevealing and clinical suspicion is high.",
    managementText:"Solitary nondisplaced rib fractures are treated symptomatically. Flail chest is managed with pain control and pulmonary toilet. If patients continue to have respiratory insufficiency, mechanical ventilation can be considered."
)

let etTube = InjuryView(
    views: [frontalChest],
    injuryTitle: ["Long ET Tube"],
    injuryMasterTitle: "Misplaced ET Tube",
    injuryAttribution: ["Case courtesy of Radswiki\nRadiopaedia.org, rID: 11634"],
    overviewText: "An endotracheal tube should end 3-7 cm above the carina. If the tube is too long, it can lead to mainstem bronchus intubation, which can cause lung collapse. If the tube is too short, it can lead to ",
    findingsText: "The tube will be seen ending either too far above the carina or too deep. If it's past the carina, one lung will not be ventilated, and may be opacified due to atelectasis.",
    managementText:"Reposition the ET tube."
)

let centralLine = InjuryView(
    views: [frontalChest],
    injuryTitle: ["Misplaced PICC Line"],
    injuryMasterTitle: "Misplaced Central Line",
    injuryAttribution: ["Case courtesy of Radswiki\nRadiopaedia.org, rID: 12344"],
    overviewText: "Central lines should end at the junction of the vena cava and the left atrium. This is true for all central lines, including femoral, jugular, and subclavian lines, peripherally inserted central catheters (PICC lines), and tunneled catheters.",
    findingsText: "The tip of the central line will not be in the correct position. It might be coiled, be too long or two short, or might track down an incorrect vein.",
    managementText:"The central line needs to be replaced. It cannot simply be repositioned."
)

let ngTube = InjuryView(
    views: [frontalChest],
    injuryMasterTitle: "Misplaced NG Tube",
    injuryAttribution: ["Case courtesy of Radswiki\nRadiopaedia.org, rID: 12344"],
    overviewText: "An NG tube should normally be seen ovelying the gastric bubble, then crossing the midline as it goes into the duodenum. If the tube is not seen crossing the midline, there is a possibility that it was placed into the trachea instead of the esophagus.",
    findingsText: "The NG tube will not be in the correct position. It will not cross midline. In the example image, the tube was in fact in the left lower bronchus.",
    managementText:"The NG tube needs to be replaced."
)

//Abdomen
let largeBowelObstruction = InjuryView(
    views: [abdominal],
    injuryMasterTitle: "Large Bowel Obstruction",
    injuryAttribution: ["Case courtesy of Dr Ian Bickle\nRadiopaedia.org, rID: 50391"],
    overviewText: "Large bowel obstruction is much less common than small bowel obstruction. Most cases are caused by colon cancer, acute diverticulitis, or a volvulus. Patients typically present with abdominal distention and pain as well as failure to pass stool or flatus.",
    findingsText: "The most common finding on abdominal X-ray is colonic distention greater than 6cm, or cecal distention greater than 9 cm. If the colon has infarcted gas may be seen in the colonic wall, a finding known as pneumatosis coli, or there may be free abdominal gas.",
    managementText:"Surgery is typically required, especially if the colon has infarcted or there is a mass lesion causing the obstruction."
)

let smallBowelObstruction = InjuryView(
    views: [abdominal],
    injuryMasterTitle: "Small Bowel Obstruction",
    injuryAttribution: ["Case courtesy of Dr Ahmed Abd Rabou\nRadiopaedia.org, rID: 35721"],
    overviewText: "Small bowel obstruction is about 4 times more common than large bowel obstruction. The most common causes are adhesions from prior abdominal surgery, incarcerated hernias, and cancer, but there are many other potential causes. Patients usually present with abdominal pain, nausea, and vomiting.",
    findingsText: "The classic findings on abdomnial plain films are loops of small bowel dilated to more than 3 cm containing air-fluid levels. Abdominal X-rays will only detect about half of all SBOs, so if your clinical suspicion is high, get a CT.",
    managementText:"Aggressive fluid resusciation, NG tube placement, analgesia, antiemetics, and surgery consultation are the mainstays of early management. Surgery is indicated for a strangulated SBO, because the blood supply to the bowel is compromised."
)

class LoadImages{
    func shoulder(){
        apShoulder.normalImage = UIImage(named: "AP Shoulder Normal Unmarked.jpg")!
        apShoulder.markedImage = UIImage(named: "AP Shoulder Normal Marked.jpg")!
        apShoulder.steps = [UIImage(named: "AP Shoulder Step 1.png")!, UIImage(named: "AP Shoulder Step 2.png")!, UIImage(named: "AP Shoulder Step 3.png")!, UIImage(named: "AP Shoulder Step 4.png")!, UIImage(named: "AP Shoulder Step 5.png")!]
        
        apicalObliqueShoulder.normalImage = UIImage(named: "Apical Oblique Normal Unmarked.jpg")!
        apicalObliqueShoulder.markedImage = UIImage(named: "Apical Oblique Normal Marked.jpg")!
        apicalObliqueShoulder.steps = [UIImage(named: "Apical Oblique Step 1.png")!, UIImage(named: "Apical Oblique Step 2.png")!]
        
        lateralYShoulder.normalImage = UIImage(named: "Lateral Y Normal Unmarked.jpg")!
        lateralYShoulder.markedImage =  UIImage(named: "Lateral Y Normal Marked.jpg")!
        lateralYShoulder.steps = [UIImage(named: "Lateral Y Step 1.png")!, UIImage(named: "Lateral Y Step 2.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            anteriorDislocation.injuryImages = [UIImage(named: "AP Anterior Dislocation Unmarked.jpg")!, UIImage(named: "Apical Oblique Anterior Dislocation Unmarked.jpg.jpg")!, UIImage(named: "Lateral Y Anterior Dislocation Unmarked.jpg")!]
            anteriorDislocation.injuryImagesMarked = [UIImage(named: "AP Anterior Dislocation Marked.jpg")!, UIImage(named: "Apical Oblique Anterior Dislocation Marked.jpg")!, UIImage(named: "Lateral Y Anterior Dislocation Marked.jpg")!]
            
            bankartLesion.injuryImages = [UIImage(named: "AP Bankart Lesion Unmarked.jpg")!]
            bankartLesion.injuryImagesMarked = [UIImage(named: "AP Bankart Lesion Marked.jpg")!]
            
            hillSachsLesion.injuryImages = [UIImage(named: "AP Hill Sachs Unmarked.jpg")!]
            hillSachsLesion.injuryImagesMarked = [UIImage(named: "AP Hill Sachs Marked.jpg")!]
            
            acJointDisruption.injuryImages = [UIImage(named: "AP AC Joint Disruption Unmarked.jpg")!]
            acJointDisruption.injuryImagesMarked = [UIImage(named: "AP AC Joint Disruption Marked.jpg")!]
            
            clavicleFracture.injuryImages = [UIImage(named: "AP Clavicle Fracture Unmarked.jpg")!]
            clavicleFracture.injuryImagesMarked = [UIImage(named: "Clavicle Fracture Marked.jpg")!]
            
            posteriorDislocation.injuryImages = [UIImage(named: "AP Posterior Shoulder Dislocation Unmarked.jpg")!, UIImage(named: "Apical Oblique Posterior Shoulder Dislocation Unmarked.jpg")!, UIImage(named: "Lateral Y Posterior Shoulder Dislocation Unmarked.jpg")!]
            posteriorDislocation.injuryImagesMarked = [UIImage(named: "AP Posterior Shoulder Dislocation Marked.jpg")!, UIImage(named: "Apical Oblique Posterior Shoulder Dislocation Marked.jpg")!, UIImage(named: "Lateral Y Posterior Shoulder Dislocation Marked.jpg")!]
            
            proximalHumerusFracture.injuryImages = [UIImage(named: "AP Proximal Humerus Fracture Unmarked.jpg")!]
            proximalHumerusFracture.injuryImagesMarked = [UIImage(named: "AP Proximal Humerus Fracture Marked.jpg")!]
            
            ribFracture.injuryImages = [UIImage(named: "Rib Fractures Unmarked.jpg")!]
            ribFracture.injuryImagesMarked = [UIImage(named: "Rib Fractures Marked.jpg")!]
            frontalChest.normalImage = UIImage(named: "AP Chest Normal Unmarked.jpg")!
            frontalChest.markedImageByComponents = [apChestHilum, apChestAorticKnob, apChestBronchus, apChestCarina, apChestDiaphragm, apChestHeart, apChestMediastinum, apChestTrachea]
            
            salterHarrisFracture.injuryImages = [UIImage(named: "Salter Harris Type I Unmarked.jpg")!, UIImage(named: "Salter Harris Type II Unmarked.jpg")!, UIImage(named: "Salter Harris Type III Unmarked.jpg")!, UIImage(named: "Salter Harris Type IV Unmarked.jpg")!]
            salterHarrisFracture.injuryImagesMarked = [UIImage(named: "Salter Harris Type I Marked.jpg")!, UIImage(named: "Salter Harris Type II Marked.jpg")!, UIImage(named: "Salter Harris Type III Marked.jpg")!, UIImage(named: "Salter Harris Type IV Marked.jpg")!]
            obliqueHand.normalImage = UIImage(named: "Oblique Hand Normal Unmarked.jpg")!
            obliqueHand.markedImage = UIImage(named: "Oblique Hand Normal Marked.jpg")!
            lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
            lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
            apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
            apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
            paHand.normalImage = UIImage(named: "PA Hand Normal Unmarked.jpg")!
            paHand.markedImage = UIImage(named: "PA Hand Normal Marked.jpg")!
        }
    }
    
    func elbow(){
        apElbow.normalImage = UIImage(named: "AP Elbow Normal Unmarked.jpg")!
        apElbow.markedImage = UIImage(named: "AP Elbow Normal Marked.png")!
        apElbow.steps = [UIImage(named: "AP Elbow Step 1.png")!, UIImage(named: "AP Elbow Step 2.png")!]
        
        apPedsElbow.normalImage = UIImage(named: "AP Elbow Peds Unmarked.jpg")!
        apPedsElbow.markedImage = UIImage(named: "AP Elbow Peds Marked.jpg")!
        apPedsElbow.steps = [UIImage(named: "AP Elbow Peds Step 1.png")!, UIImage(named: "AP Elbow Peds Step 2.png")!, UIImage(named: "AP Elbow Peds Step 3.png")!, UIImage(named: "AP Elbow Peds Unmarked.jpg")!]
        
        lateralElbow.normalImage = UIImage(named: "Lateral Elbow Normal Unmarked.jpg")!
        lateralElbow.markedImage = UIImage(named: "Lateral Elbow Normal Marked.jpg")!
        lateralElbow.steps = [UIImage(named: "Lateral Elbow Step 1.png")!, UIImage(named: "Lateral Elbow Step 2.png")!, UIImage(named: "Lateral Elbow Step 3.png")!, UIImage(named: "Lateral Elbow Step 4.png")!, UIImage(named: "Lateral Elbow Step 5.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            radialHeadFracture.injuryImages = [UIImage(named: "AP Radial Head Fracture Unmarked.jpg")!, UIImage(named: "Lateral Radial Head Fracture Unmarked.jpg")!]
            radialHeadFracture.injuryImagesMarked = [UIImage(named: "AP Radial Head Fracture Marked.jpg")!, UIImage(named: "Lateral Radial Head Fracture Marked.jpg")!]
            
            radialHeadDislocation.injuryImages = [UIImage(named: "Radial Head Dislocation Unmarked.jpg")!]
            radialHeadDislocation.injuryImagesMarked = [UIImage(named: "Radial Head Dislocation Marked.jpg")!]
            
            nursemaidsElbow.injuryImages = [UIImage(named: "Lateral Elbow Normal Unmarked.jpg")!]
            nursemaidsElbow.injuryImagesMarked = [UIImage(named: "Nursemaids Elbow Marked.jpg")!]
            
            olecranonFracture.injuryImages = [UIImage(named: "Olecranon Fracture Unmarked.jpg")!]
            olecranonFracture.injuryImagesMarked = [UIImage(named: "Olecranon Fracture Marked.jpg")!]
            
            monteggiaFractureDislocation.injuryImages = [UIImage(named: "AP Monteggia Fracture Dislocation Unmarked.jpg")!, UIImage(named: "Lateral Monteggia Fracture Dislocation Unmarked.jpg")!]
            monteggiaFractureDislocation.injuryImagesMarked = [UIImage(named: "AP Monteggia Fracture Dislocation Marked.jpg")!, UIImage(named: "Lateral Monteggia Fracture Dislocation Marked.jpg")!]
            
            lateralHumeralCondyleFracture.injuryImages = [UIImage(named: "Lateral Condyle Fracture Unmarked.jpg")!]
            lateralHumeralCondyleFracture.injuryImagesMarked = [UIImage(named: "Lateral Condyle Fracture Marked.jpg")!]
            
            medialEpicondyleAvulsion.injuryImages = [UIImage(named: "Medial Epicondyle Fracture Unmarked.jpg")!]
            medialEpicondyleAvulsion.injuryImagesMarked = [UIImage(named: "Medial Epicondyle Fracture Marked.jpg")!]
            
            supracondylarFracture.injuryImages = [UIImage(named: "Supracondylar Fracture Unmarked.jpg")!]
            supracondylarFracture.injuryImagesMarked = [UIImage(named: "Supracondylar Fracture Marked.jpg")!]
            
            salterHarrisFracture.injuryImages = [UIImage(named: "Salter Harris Type I Unmarked.jpg")!, UIImage(named: "Salter Harris Type II Unmarked.jpg")!, UIImage(named: "Salter Harris Type III Unmarked.jpg")!, UIImage(named: "Salter Harris Type IV Unmarked.jpg")!]
            salterHarrisFracture.injuryImagesMarked = [UIImage(named: "Salter Harris Type I Marked.jpg")!, UIImage(named: "Salter Harris Type II Marked.jpg")!, UIImage(named: "Salter Harris Type III Marked.jpg")!, UIImage(named: "Salter Harris Type IV Marked.jpg")!]
            obliqueHand.normalImage = UIImage(named: "Oblique Hand Normal Unmarked.jpg")!
            obliqueHand.markedImage = UIImage(named: "Oblique Hand Normal Marked.jpg")!
            lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
            lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
            apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
            apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
            paHand.normalImage = UIImage(named: "PA Hand Normal Unmarked.jpg")!
            paHand.markedImage = UIImage(named: "PA Hand Normal Marked.jpg")!
        }
    }
    
    func wrist(){
        paWrist.normalImage = UIImage(named: "PA Wrist Normal Unmarked.jpg")!
        paWrist.markedImage = UIImage(named: "PA Wrist Normal Marked.jpg")!
        paWrist.steps = [UIImage(named: "PA Wrist Step 1.png")!, UIImage(named: "PA Wrist Step 2.png")!, UIImage(named: "PA Wrist Step 3.png")!, UIImage(named: "PA Wrist Step 4.png")!, UIImage(named: "PA Wrist Step 5.png")!, UIImage(named: "PA Wrist Step 6.png")!]
        
        lateralWrist.normalImage = UIImage(named: "Lateral Wrist Normal Unmarked.jpg")!
        lateralWrist.markedImage = UIImage(named: "Lateral Wrist Normal Marked.jpg")!
        lateralWrist.steps = [UIImage(named: "Lateral Wrist Step 1.png")!, UIImage(named: "Lateral Wrist Step 2.png")!, UIImage(named: "Lateral Wrist Step 3.png")!, UIImage(named: "Lateral Wrist Step 4.png")!, UIImage(named: "Lateral Wrist Step 5.png")!]
        
        scaphoidWrist.normalImage = UIImage(named: "Scaphoid Wrist Normal Unmarked.jpg")!
        scaphoidWrist.markedImage = UIImage(named: "Scaphoid Wrist Normal Marked.jpg")!
        scaphoidWrist.steps = [UIImage(named: "Scaphoid Wrist Step 1.png")!, UIImage(named: "Scaphoid Wrist Step 2.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            collesFracture.injuryImages = [UIImage(named: "AP Colles Fracture Unmarked.jpg")!, UIImage(named: "Lateral Colles Fracture Unmarked.jpg")!]
            collesFracture.injuryImagesMarked = [UIImage(named: "AP Colles Fracture Marked.jpg")!, UIImage(named: "Lateral Colles Fracture Marked.jpg")!]
            
            smithFracture.injuryImages = [UIImage(named: "PA Smith Fracture Unmarked.jpg")!, UIImage(named: "Lateral Smith Fracture Unmarked.jpg")!]
            smithFracture.injuryImagesMarked = [UIImage(named: "PA Smith Fracture Marked.jpg")!, UIImage(named: "Lateral Smith Fracture Marked.jpg")!]
            
            bartonFracture.injuryImages = [UIImage(named: "PA Barton Fracture Unmarked.jpg")!, UIImage(named: "Lateral Barton Fracture Unmarked.jpg")!]
            bartonFracture.injuryImagesMarked = [UIImage(named: "PA Barton Fracture Marked.jpg")!, UIImage(named: "Lateral Barton Fracture Marked.jpg")!]
            
            chauffeurFracture.injuryImages = [UIImage(named: "PA Chauffeur Fracture Unmarked.jpg")!]
            chauffeurFracture.injuryImagesMarked = [UIImage(named: "PA Chauffeur Fracture Marked.jpg")!]
            
            nightstickFracture.injuryImages = [UIImage(named: "Nightstick Fracture Unmarked.jpg")!]
            nightstickFracture.injuryImagesMarked = [UIImage(named: "Nightstick Fracture Marked.jpg")!]
            
            ulnarStyloidFracture.injuryImages = [UIImage(named: "Ulnar Styloid Fracture Unmarked.jpg")!]
            ulnarStyloidFracture.injuryImagesMarked = [UIImage(named: "Ulnar Styloid Fracture Marked.jpg")!]
            
            radioUlnarJointDislocation.injuryImages = [UIImage(named: "PA Smith Fracture Unmarked.jpg")!]
            radioUlnarJointDislocation.injuryImagesMarked = [UIImage(named: "PA Smith Fracture Marked.jpg")!]
            
            galeazziFracture.injuryImages = [UIImage(named: "PA Galeazzi Fracture Unmarked.jpg")!, UIImage(named: "Lateral Galeazzi Fracture Unmarked.jpg")!]
            galeazziFracture.injuryImagesMarked = [UIImage(named: "PA Galeazzi Fracture Marked.jpg")!, UIImage(named: "Lateral Galeazzi Fracture Marked.jpg")!]
            
            scaphoLunateDissociation.injuryImages = [UIImage(named: "Scapho-Lunate Dissociation Unmarked.jpg")!]
            scaphoLunateDissociation.injuryImagesMarked = [UIImage(named: "Scapho-Lunate Dissociation Marked.jpg")!]
            
            scaphoidFracture.injuryImages = [UIImage(named: "Scaphoid Fracture Unmarked.jpg")!]
            scaphoidFracture.injuryImagesMarked = [UIImage(named: "Scaphoid Fracture Marked.jpg")!]
            
            greenstickFracture.injuryImages = [UIImage(named: "Greenstick Fracture Unmarked.jpg")!]
            greenstickFracture.injuryImagesMarked = [UIImage(named: "Greenstick Fracture Marked.jpg")!]
            
            torusFracture.injuryImages = [UIImage(named: "Torus Fracture Unmarked.jpg")!]
            torusFracture.injuryImagesMarked = [UIImage(named: "Torus Fracture Marked.jpg")!]
            
            lunateDislocation.injuryImages = [UIImage(named: "Lunate Dislocation Unmarked.jpg")!]
            lunateDislocation.injuryImagesMarked = [UIImage(named: "Lunate Dislocation Marked.jpg")!]
            
            perilunateDislocation.injuryImages = [UIImage(named: "Perilunate Dislocation Unmarked.jpg")!]
            perilunateDislocation.injuryImagesMarked = [UIImage(named: "Perilunate Dislocation Marked.jpg")!]
            
            triquetralFracture.injuryImages = [UIImage(named: "Triquetral Fracture Unmarked.jpg")!]
            triquetralFracture.injuryImagesMarked = [UIImage(named: "Triquetral Fracture Marked.jpg")!]
            
            salterHarrisFracture.injuryImages = [UIImage(named: "Salter Harris Type I Unmarked.jpg")!, UIImage(named: "Salter Harris Type II Unmarked.jpg")!, UIImage(named: "Salter Harris Type III Unmarked.jpg")!, UIImage(named: "Salter Harris Type IV Unmarked.jpg")!]
            salterHarrisFracture.injuryImagesMarked = [UIImage(named: "Salter Harris Type I Marked.jpg")!, UIImage(named: "Salter Harris Type II Marked.jpg")!, UIImage(named: "Salter Harris Type III Marked.jpg")!, UIImage(named: "Salter Harris Type IV Marked.jpg")!]
            obliqueHand.normalImage = UIImage(named: "Oblique Hand Normal Unmarked.jpg")!
            obliqueHand.markedImage = UIImage(named: "Oblique Hand Normal Marked.jpg")!
            lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
            lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
            apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
            apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
            paHand.normalImage = UIImage(named: "PA Hand Normal Unmarked.jpg")!
            paHand.markedImage = UIImage(named: "PA Hand Normal Marked.jpg")!
        }
    }
    
    func hand(){
        paHand.normalImage = UIImage(named: "PA Hand Normal Unmarked.jpg")!
        paHand.markedImage = UIImage(named: "PA Hand Normal Marked.jpg")!
        paHand.steps = [UIImage(named: "PA Hand Step 1.png")!, UIImage(named: "PA Hand Step 2.png")!, UIImage(named: "PA Hand Step 3.png")!]
        
        obliqueHand.normalImage = UIImage(named: "Oblique Hand Normal Unmarked.jpg")!
        obliqueHand.markedImage = UIImage(named: "Oblique Hand Normal Marked.jpg")!
        obliqueHand.steps = [UIImage(named: "Oblique Hand Step 1.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            malletFinger.injuryImages = [UIImage(named: "Mallet Finger Unmarked.jpg")!]
            malletFinger.injuryImagesMarked = [UIImage(named: "Mallet Finger Marked.jpg")!]
            
            volarPlateFracture.injuryImages = [UIImage(named: "Volar Plate Fracture Unmarked.jpg")!]
            volarPlateFracture.injuryImagesMarked = [UIImage(named: "Volar Plate Fracture Marked.jpg")!]
            
            boxersFracture.injuryImages = [UIImage(named: "Boxer Fracture Unmarked.jpg")!]
            boxersFracture.injuryImagesMarked = [UIImage(named: "Boxer Fracture Marked.jpg")!]
            
            simplePhalanxMetacarpalFracture.injuryImages = [UIImage(named: "Phalanx Fracture Unmarked.jpg")!]
            simplePhalanxMetacarpalFracture.injuryImagesMarked = [UIImage(named: "Phalanx Fracture Marked.jpg")!]
            
            bennettsFracture.injuryImages = [UIImage(named: "Bennett Fracture Unmarked.jpg")!]
            bennettsFracture.injuryImagesMarked = [UIImage(named: "Bennett Fracture Marked.jpg")!]
            
            rolandosFracture.injuryImages = [UIImage(named: "Rolando Fracture Unmarked.jpg")!]
            rolandosFracture.injuryImagesMarked = [UIImage(named: "Rolando Fracture Marked.jpg")!]
            
            extraArticularThumbFracture.injuryImages = [UIImage(named: "Epibasal Thumb Fracture Unmarked.jpg")!]
            extraArticularThumbFracture.injuryImagesMarked = [UIImage(named: "Epibasal Thumb Fracture Marked.jpg")!]
            
            gamekeepersThumb.injuryImages = [UIImage(named: "Gamekeeper Thumb Unmarked.jpg")!]
            gamekeepersThumb.injuryImagesMarked = [UIImage(named: "Gamekeeper Thumb Marked.jpg")!]
            
            carpometacarpalDislocation.injuryImages = [UIImage(named: "CMC Joint Dislocation Unmarked.jpg")!]
            carpometacarpalDislocation.injuryImagesMarked = [UIImage(named: "CMC Joint Dislocation Marked.jpg")!]
            
            salterHarrisFracture.injuryImages = [UIImage(named: "Salter Harris Type I Unmarked.jpg")!, UIImage(named: "Salter Harris Type II Unmarked.jpg")!, UIImage(named: "Salter Harris Type III Unmarked.jpg")!, UIImage(named: "Salter Harris Type IV Unmarked.jpg")!]
            salterHarrisFracture.injuryImagesMarked = [UIImage(named: "Salter Harris Type I Marked.jpg")!, UIImage(named: "Salter Harris Type II Marked.jpg")!, UIImage(named: "Salter Harris Type III Marked.jpg")!, UIImage(named: "Salter Harris Type IV Marked.jpg")!]
            lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
            lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
            apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
            apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
        }
    }
    
    func hip(){
        apPelvis.normalImage = UIImage(named: "Pelvis Normal Unmarked.jpg")!
        apPelvis.markedImage = UIImage(named: "Pelvis Normal Marked.png")!
        apPelvis.steps = [UIImage(named: "Pelvis Step 1.png")!, UIImage(named: "Pelvis Step 2.png")!, UIImage(named: "Pelvis Step 3.png")!, UIImage(named: "Pelvis Step 4.png")!, UIImage(named: "Pelvis Step 5.png")!, UIImage(named: "Pelvis Step 6.png")!, UIImage(named: "Pelvis Step 7.png")!, UIImage(named: "Pelvis Step 8.png")!, UIImage(named: "Pelvis Step 9.png")!]
        
        lateralHip.normalImage = UIImage(named: "Lateral Hip Normal Unmarked.jpg")!
        lateralHip.markedImage = UIImage(named: "Lateral Hip Normal Marked.jpg")!
        lateralHip.steps = [UIImage(named: "Lateral Hip Step 1.png")!, UIImage(named: "Lateral Hip Step 2.png")!, UIImage(named: "Lateral Hip Step 3.png")!, UIImage(named: "Lateral Hip Step 4.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            mainPelvicRingFracture.injuryImages = [UIImage(named: "Open Book Pelvic Fracture Unmarked.jpg")!]
            mainPelvicRingFracture.injuryImagesMarked = [UIImage(named: "Open Book Pelvic Fracture Marked.jpg")!]
            
            pubicRamusFracture.injuryImages = [UIImage(named: "Pubic Ramus Fracture Unmarked.jpg")!]
            pubicRamusFracture.injuryImagesMarked = [UIImage(named: "Pubic Ramus Fracture Marked.jpg")!]
            
            sacralFracture.injuryImages = [UIImage(named: "Sacral Fracture Unmarked.jpg")!]
            sacralFracture.injuryImagesMarked = [UIImage(named: "Sacral Fracture Marked.jpg")!]
            
            acetabularFracture.injuryImages = [UIImage(named: "Acetabular Fracture Unmarked.jpg")!]
            acetabularFracture.injuryImagesMarked = [UIImage(named: "Acetabular Fracture Marked.jpg")!]
            
            femoralNeckFracture.injuryImages = [UIImage(named: "Femoral Neck Fracture Unmarked.jpg")!, UIImage(named: "Lateral Femoral Neck Fracture Unmarked.jpg")!]
            femoralNeckFracture.injuryImagesMarked = [UIImage(named: "Femoral Neck Fracture Marked.jpg")!, UIImage(named: "Lateral Femoral Neck Fracture Marked.jpg")!]
            
            posteriorHipDislocation.injuryImages = [UIImage(named: "Posterior Hip Dislocation Unmarked.jpg")!]
            posteriorHipDislocation.injuryImagesMarked = [UIImage(named: "Posterior Hip Dislocation Marked.jpg")!]
            
            apophysealAvulsion.injuryImages = [UIImage(named: "Apophyseal Avulsion Unmarked.jpg")!]
            apophysealAvulsion.injuryImagesMarked = [UIImage(named: "Apophyseal Avulsion Marked.jpg")!]
        }
    }
    
    func knee(){
        apKnee.normalImage = UIImage(named: "AP Knee Normal Unmarked.jpg")!
        apKnee.markedImage = UIImage(named: "AP Knee Normal Marked.jpg")!
        apKnee.steps = [UIImage(named: "AP Knee Step 1.png")!, UIImage(named: "AP Knee Step 2.png")!, UIImage(named: "AP Knee Step 3.png")!, UIImage(named: "AP Knee Step 4.png")!, UIImage(named: "AP Knee Step 5.png")!, UIImage(named: "AP Knee Step 6.png")!, UIImage(named: "AP Knee Step 7.png")!, UIImage(named: "AP Knee Step 8.png")!, UIImage(named: "AP Knee Step 9.png")!, UIImage(named: "AP Knee Step 10.png")!]
        
        lateralKnee.normalImage = UIImage(named: "Lateral Knee Normal Unmarked.jpg")!
        lateralKnee.markedImage = UIImage(named: "Lateral Knee Normal Marked.jpg")!
        lateralKnee.steps = [UIImage(named: "Lateral Knee Step 1.png")!, UIImage(named: "Lateral Knee Step 1.png")!, UIImage(named: "Lateral Knee Step 3.png")!, UIImage(named: "Lateral Knee Step 4.png")!, UIImage(named: "Lateral Knee Step 5.png")!, UIImage(named: "Lateral Knee Step 6.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            tibialPlateauFracture.injuryImages = [UIImage(named: "Tibial Plateau Fracture AP Unmarked.jpg")!, UIImage(named: "Tibial Plateau Fracture Lateral Unmarked.jpg")!]
            tibialPlateauFracture.injuryImagesMarked = [UIImage(named: "Tibial Plateau Fracture AP Marked.jpg")!, UIImage(named: "Tibial Plateau Fracture Lateral Marked.jpg")!]
            
            cruciateLigamentInjury.injuryImages = [UIImage(named: "ACL Avulsion Fracture Unmarked.jpg")!]
            cruciateLigamentInjury.injuryImagesMarked = [UIImage(named: "ACL Avulsion Fracture Marked.jpg")!]
            
            patellarFracture.injuryImages = [UIImage(named: "AP Patella Fracture Unmarked.jpg")!, UIImage(named: "Lateral Patella Fracture Unmarked.jpg")!]
            patellarFracture.injuryImagesMarked = [UIImage(named: "AP Patella Fracture Marked.jpg")!, UIImage(named: "Lateral Patella Fracture Marked.jpg")!]
            
            fibularNeckFracture.injuryImages = [UIImage(named: "Fibular Neck Fracture Unmarked.jpg")!]
            fibularNeckFracture.injuryImagesMarked = [UIImage(named: "Fibular Neck Fracture Marked.jpg")!]
            
            segondFracture.injuryImages = [UIImage(named: "Segond Fracture Unmarked.jpg")!]
            segondFracture.injuryImagesMarked = [UIImage(named: "Segond Fracture Marked.jpg")!]
            
            salterHarrisFracture.injuryImages = [UIImage(named: "Salter Harris Type I Unmarked.jpg")!, UIImage(named: "Salter Harris Type II Unmarked.jpg")!, UIImage(named: "Salter Harris Type III Unmarked.jpg")!, UIImage(named: "Salter Harris Type IV Unmarked.jpg")!]
            salterHarrisFracture.injuryImagesMarked = [UIImage(named: "Salter Harris Type I Marked.jpg")!, UIImage(named: "Salter Harris Type II Marked.jpg")!, UIImage(named: "Salter Harris Type III Marked.jpg")!, UIImage(named: "Salter Harris Type IV Marked.jpg")!]
            obliqueHand.normalImage = UIImage(named: "Oblique Hand Normal Unmarked.jpg")!
            obliqueHand.markedImage = UIImage(named: "Oblique Hand Normal Marked.jpg")!
            lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
            lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
            apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
            apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
            paHand.normalImage = UIImage(named: "PA Hand Normal Unmarked.jpg")!
            paHand.markedImage = UIImage(named: "PA Hand Normal Marked.jpg")!
            
            supracondylarFemurFracture.injuryImages = [UIImage(named: "Supracondylar Femur Fracture Unmarked.jpg")!]
            supracondylarFemurFracture.injuryImagesMarked = [UIImage(named: "Supracondylar Femur Fracture Marked.jpg")!]
            
            patellarTendonRupture.injuryImages = [UIImage(named: "Patellar Tendon Rupture Unmarked.jpg")!]
            patellarTendonRupture.injuryImagesMarked = [UIImage(named: "Patellar Tendon Rupture Marked.jpg")!]
            
            osteochondralDefect.injuryImages = [UIImage(named: "Talar Osteochondral Defect Unmarked.jpg")!, UIImage(named: "Femur Osteochondral Defect Unmarked.jpg")!]
            osteochondralDefect.injuryImagesMarked = [UIImage(named: "Talar Osteochondral Defect Marked.jpg")!, UIImage(named: "Femur Osteochondral Defect Marked.jpg")!]
        }
    }
    
    func ankle(){
        lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
        lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
        lateralAnkle.steps = [UIImage(named: "Lateral Ankle Step 1.png")!, UIImage(named: "Lateral Ankle Step 2.png")!, UIImage(named: "Lateral Ankle Step 3.png")!, UIImage(named: "Lateral Ankle Step 4.png")!, UIImage(named: "Lateral Ankle Step 5.png")!, UIImage(named: "Lateral Ankle Step 6.png")!, UIImage(named: "Lateral Ankle Step 7.png")!]
        
        apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
        apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
        apMorticeAnkle.steps = [UIImage(named: "AP Mortice Ankle Step 1.png")!, UIImage(named: "AP Mortice Ankle Step 2.png")!, UIImage(named: "AP Mortice Ankle Step 3.png")!, UIImage(named: "AP Mortice Ankle Step 4.png")!, UIImage(named: "AP Mortice Ankle Step 5.png")!, UIImage(named: "AP Mortice Ankle Step 6.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            distalFibulaFracture.injuryImages = [UIImage(named: "Distal Fibula Fracture Unmarked.jpg")!]
            distalFibulaFracture.injuryImagesMarked = [UIImage(named: "Distal Fibula Fracture Marked.jpg")!]
            
            talusFracture.injuryImages = [UIImage(named: "Lateral Talar Neck Fracture Unmarked.jpg")!, UIImage(named: "Oblique Talar Neck Fracture Unmarked.jpg")!]
            talusFracture.injuryImagesMarked = [UIImage(named: "Lateral Talar Neck Fracture Marked.jpg")!, UIImage(named: "Oblique Talar Neck Fracture Marked.jpg")!]
            
            talonavicularJointDislocation.injuryImages = [UIImage(named: "Talonavicular Dislocation Unmarked.jpg")!]
            talonavicularJointDislocation.injuryImagesMarked = [UIImage(named: "Talonavicular Dislocation Marked.jpg")!]
            
            calcanealFracture.injuryImages = [UIImage(named: "Calcaneal Fracture Unmarked.jpg")!]
            calcanealFracture.injuryImagesMarked = [UIImage(named: "Calcaneal Fracture Marked.jpg")!]
            
            fifthMetatarsalAvulsionFracture.injuryImages = [UIImage(named: "5th Metatarsal Avulsion Fracture Unmarked.jpg")!]
            fifthMetatarsalAvulsionFracture.injuryImagesMarked = [UIImage(named: "5th Metatarsal Avulsion Fracture Marked.jpg")!]
            obliqueFoot.normalImage = UIImage(named: "Oblique Foot Normal Unmarked.jpg")!
            obliqueFoot.markedImage = UIImage(named: "Oblique Foot Normal Marked.jpg")!
            
            jonesFracture.injuryImages = [UIImage(named: "Jones Fracture Unmarked.jpg")!]
            jonesFracture.injuryImagesMarked = [UIImage(named: "Jones Fracture Marked.jpg")!]
            
            medialLigamentTear.injuryImages = [UIImage(named: "Distal Fibula Fracture Unmarked.jpg")!]
            medialLigamentTear.injuryImagesMarked = [UIImage(named: "Distal Fibula Fracture Marked.jpg")!]
            
            osteochondralDefect.injuryImages = [UIImage(named: "Talar Osteochondral Defect Unmarked.jpg")!, UIImage(named: "Femur Osteochondral Defect Unmarked.jpg")!]
            osteochondralDefect.injuryImagesMarked = [UIImage(named: "Talar Osteochondral Defect Marked.jpg")!, UIImage(named: "Femur Osteochondral Defect Marked.jpg")!]
            apKnee.normalImage = UIImage(named: "AP Knee Normal Unmarked.jpg")!
            apKnee.markedImage = UIImage(named: "AP Knee Normal Marked.jpg")!
            
            salterHarrisFracture.injuryImages = [UIImage(named: "Salter Harris Type I Unmarked.jpg")!, UIImage(named: "Salter Harris Type II Unmarked.jpg")!, UIImage(named: "Salter Harris Type III Unmarked.jpg")!, UIImage(named: "Salter Harris Type IV Unmarked.jpg")!]
            salterHarrisFracture.injuryImagesMarked = [UIImage(named: "Salter Harris Type I Marked.jpg")!, UIImage(named: "Salter Harris Type II Marked.jpg")!, UIImage(named: "Salter Harris Type III Marked.jpg")!, UIImage(named: "Salter Harris Type IV Marked.jpg")!]
            obliqueHand.normalImage = UIImage(named: "Oblique Hand Normal Unmarked.jpg")!
            obliqueHand.markedImage = UIImage(named: "Oblique Hand Normal Marked.jpg")!
            paHand.normalImage = UIImage(named: "PA Hand Normal Unmarked.jpg")!
            paHand.markedImage = UIImage(named: "PA Hand Normal Marked.jpg")!
        }
    }
    
    func foot(){
        apFoot.normalImage = UIImage(named: "AP Foot Normal Unmarked.jpg")!
        apFoot.markedImage = UIImage(named: "AP Foot Normal Marked.jpg")!
        apFoot.steps = [UIImage(named: "AP Foot Step 1.png")!, UIImage(named: "AP Foot Step 2.png")!]
        
        obliqueFoot.normalImage = UIImage(named: "Oblique Foot Normal Unmarked.jpg")!
        obliqueFoot.markedImage = UIImage(named: "Oblique Foot Normal Marked.jpg")!
        obliqueFoot.steps = [UIImage(named: "Oblique Foot Step 1.png")!, UIImage(named: "Oblique Foot Step 2.png")!, UIImage(named: "Oblique Foot Step 3.png")!]
        
        lateralFoot.normalImage = UIImage(named: "Lateral Foot Normal Unmarked.jpg")!
        lateralFoot.markedImage = UIImage(named: "Lateral Foot Normal Marked.jpg")!
        lateralFoot.steps = [UIImage(named: "Lateral Foot Step 1.png")!, UIImage(named: "Lateral Foot Step 2.png")!, UIImage(named: "Lateral Foot Step 3.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
            apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
            lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
            lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
            
            talusFracture.injuryImages = [UIImage(named: "Lateral Talar Neck Fracture Unmarked.jpg")!, UIImage(named: "Oblique Talar Neck Fracture Unmarked.jpg")!]
            talusFracture.injuryImagesMarked = [UIImage(named: "Lateral Talar Neck Fracture Marked.jpg")!, UIImage(named: "Oblique Talar Neck Fracture Marked.jpg")!]
            
            talonavicularJointDislocation.injuryImages = [UIImage(named: "Talonavicular Dislocation Unmarked.jpg")!]
            talonavicularJointDislocation.injuryImagesMarked = [UIImage(named: "Talonavicular Dislocation Marked.jpg")!]
            
            calcanealFracture.injuryImages = [UIImage(named: "Calcaneal Fracture Unmarked.jpg")!]
            calcanealFracture.injuryImagesMarked = [UIImage(named: "Calcaneal Fracture Marked.jpg")!]
            
            jonesFracture.injuryImages = [UIImage(named: "Jones Fracture Unmarked.jpg")!]
            jonesFracture.injuryImagesMarked = [UIImage(named: "Jones Fracture Marked.jpg")!]
            
            lisfrancInjury.injuryImages = [UIImage(named: "Lisfranc Injury Unmarked.jpg")!]
            lisfrancInjury.injuryImagesMarked = [UIImage(named: "Lisfranc Injury Marked.jpg")!]
            
            metatarsalOrPhalanxFracture.injuryImages = [UIImage(named: "Phalanx Fracture Foot Unmarked.jpg")!]
            metatarsalOrPhalanxFracture.injuryImagesMarked = [UIImage(named: "Phalanx Fracture Foot Marked.jpg")!]
            
            fifthMetatarsalAvulsionFracture.injuryImages = [UIImage(named: "5th Metatarsal Avulsion Fracture Unmarked.jpg")!]
            fifthMetatarsalAvulsionFracture.injuryImagesMarked = [UIImage(named: "5th Metatarsal Avulsion Fracture Marked.jpg")!]
            
            salterHarrisFracture.injuryImages = [UIImage(named: "Salter Harris Type I Unmarked.jpg")!, UIImage(named: "Salter Harris Type II Unmarked.jpg")!, UIImage(named: "Salter Harris Type III Unmarked.jpg")!, UIImage(named: "Salter Harris Type IV Unmarked.jpg")!]
            salterHarrisFracture.injuryImagesMarked = [UIImage(named: "Salter Harris Type I Marked.jpg")!, UIImage(named: "Salter Harris Type II Marked.jpg")!, UIImage(named: "Salter Harris Type III Marked.jpg")!, UIImage(named: "Salter Harris Type IV Marked.jpg")!]
            obliqueHand.normalImage = UIImage(named: "Oblique Hand Normal Unmarked.jpg")!
            obliqueHand.markedImage = UIImage(named: "Oblique Hand Normal Marked.jpg")!
            lateralAnkle.normalImage = UIImage(named: "Lateral Ankle Normal Unmarked.jpg")!
            lateralAnkle.markedImage = UIImage(named: "Lateral Ankle Normal Marked.jpg")!
            apMorticeAnkle.normalImage = UIImage(named: "AP Mortice Ankle Normal Unmarked.jpg")!
            apMorticeAnkle.markedImage = UIImage(named: "AP Mortice Ankle Normal Marked.jpg")!
            paHand.normalImage = UIImage(named: "PA Hand Normal Unmarked.jpg")!
            paHand.markedImage = UIImage(named: "PA Hand Normal Marked.jpg")!
        }
    }
    
    
    func cSpine(){
        lateralCSpine.normalImage = UIImage(named: "Lateral C Spine Normal Unmarked.jpg")!
        lateralCSpine.markedImage = UIImage(named: "Lateral C Spine Normal Marked.jpg")!
        lateralCSpine.steps = [UIImage(named: "Lateral C Spine Step 1.png")!, UIImage(named: "Lateral C Spine Step 2.png")!, UIImage(named: "Lateral C Spine Step 3.png")!, UIImage(named: "Lateral C Spine Step 4.png")!, UIImage(named: "Lateral C Spine Step 5.png")!, UIImage(named: "Lateral C Spine Step 6.png")!]
        
        apPegCSpine.normalImage = UIImage(named: "AP Peg Normal Unmarked.jpg")!
        apPegCSpine.markedImage = UIImage(named: "AP Peg Normal Marked.jpg")!
        apPegCSpine.steps = [UIImage(named: "AP Peg Step 1.png")!, UIImage(named: "AP Peg Step 2.png")!, UIImage(named: "AP Peg Step 3.png")!]
        
        longAPCSpine.normalImage = UIImage(named: "Long AP View Normal Unmarked.jpg")!
        longAPCSpine.markedImage = UIImage(named: "Long AP Normal Marked.jpg")!
        longAPCSpine.steps = [UIImage(named: "Long AP View Step 1.png")!, UIImage(named: "Long AP View Step 2.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            odontoidPegFracture.injuryImages = [UIImage(named: "Odontoid Peg Fracture Unmarked.jpg")!, UIImage(named: "Odontoid Fracture Peg Unmarked.jpg")!]
            odontoidPegFracture.injuryImagesMarked = [UIImage(named: "Odontoid Peg Fracture Marked.jpg")!, UIImage(named: "Odontoid Fracture Peg Marked.jpg")!]
            
            transverseLigamentRupture.injuryImages = [UIImage(named: "Jefferson Fracture Unmarked.jpg")!, UIImage(named: "Jefferson Fracture Peg Unmarked.jpg")!]
            transverseLigamentRupture.injuryImagesMarked = [UIImage(named: "Jefferson Fracture Marked.jpg")!, UIImage(named: "Jefferson Fracture Peg Marked.jpg")!]
            
            jeffersonFracture.injuryImages = [UIImage(named: "Jefferson Fracture Unmarked.jpg")!, UIImage(named: "Jefferson Fracture Peg Unmarked.jpg")!]
            jeffersonFracture.injuryImagesMarked = [UIImage(named: "Jefferson Fracture Marked.jpg")!, UIImage(named: "Jefferson Fracture Peg Marked.jpg")!]
            
            hangmansFracture.injuryImages = [UIImage(named: "Hangman Fracture Unmarked.jpg")!]
            hangmansFracture.injuryImagesMarked = [UIImage(named: "Hangman Fracture Marked.jpg")!]
            
            spinousProcessFracture.injuryImages = [UIImage(named: "Spinous Process Fracture Unmarked.jpg")!]
            spinousProcessFracture.injuryImagesMarked = [UIImage(named: "Spinous Process Fracture Marked.jpg")!]
            
            compressionFracture.injuryImages = [UIImage(named: "Compression Fracture Unmarked.jpg")!]
            compressionFracture.injuryImagesMarked = [UIImage(named: "Compression Fracture Marked.jpg")!]
            lateralLSpine.normalImage = UIImage(named: "Lateral Lumbar Spine Normal Unmarked.jpg")!
            lateralLSpine.markedImage = UIImage(named: "Lateral Lumbar Spine Normal Marked.jpg")!
            
            unilateralFacetDislocation.injuryImages = [UIImage(named: "Unilateral Facet Dislocation Unmarked.jpg")!]
            unilateralFacetDislocation.injuryImagesMarked = [UIImage(named: "Unilateral Facet Dislocation Marked.jpg")!]
            
            hyperflexionTeardropFracture.injuryImages = [UIImage(named: "Hyperflexion Teardrop Fracture Unmarked.jpg")!]
            hyperflexionTeardropFracture.injuryImagesMarked = [UIImage(named: "Hyperflexion Teardrop Fracture Marked.jpg")!]
            
            anteriorCervicalSubluxation.injuryImages = [UIImage(named: "Anterior Cervical Subluxation Unmarked.jpg")!]
            anteriorCervicalSubluxation.injuryImagesMarked = [UIImage(named: "Anterior Cervical Subluxation Marked.jpg")!]
        }
    }
    
    func lSpine(){
        lateralLSpine.normalImage = UIImage(named: "Lateral Lumbar Spine Normal Unmarked.jpg")!
        lateralLSpine.markedImage = UIImage(named: "Lateral Lumbar Spine Normal Marked.jpg")!
        lateralLSpine.steps = [UIImage(named: "Lateral Lumbar Spine Step 1.png")!, UIImage(named: "Lateral Lumbar Spine Step 2.png")!, UIImage(named: "Lateral Lumbar Spine Step 3.png")!, UIImage(named: "Lateral Lumbar Spine Step 4.png")!, UIImage(named: "Lateral Lumbar Spine Step 5.png")!]
        
        apLSpine.normalImage = UIImage(named: "AP Lumbar Spine Normal Unmarked.jpg")!
        apLSpine.markedImage = UIImage(named: "AP Lumbar Spine Normal Marked.jpg")!
        apLSpine.steps = [UIImage(named: "AP Lumbar Spine Step 1.png")!, UIImage(named: "AP Lumbar Spine Step 2.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            compressionFracture.injuryImages = [UIImage(named: "Compression Fracture Unmarked.jpg")!]
            compressionFracture.injuryImagesMarked = [UIImage(named: "Compression Fracture Marked.jpg")!]
            
            burstFracture.injuryImages = [UIImage(named: "Burst Fracture Lateral Unmarked.jpg")!, UIImage(named: "Burst Fracture AP Unmarked.jpg")!]
            burstFracture.injuryImagesMarked = [UIImage(named: "Burst Fracture Lateral Marked.jpg")!, UIImage(named: "Burst Fracture AP Marked.jpg")!]
            
            flexionDistractionInjury.injuryImages = [UIImage(named: "Chance Fracture Unmarked.jpg")!]
            flexionDistractionInjury.injuryImagesMarked = [UIImage(named: "Chance Fracture Marked.jpg")!]
            
            lumbarFractureDislocationInjury.injuryImages = [UIImage(named: "Lumbar Fracture Dislocation Unmarked.jpg")!]
            lumbarFractureDislocationInjury.injuryImagesMarked = [UIImage(named: "Lumbar Fracture Dislocation Marked.jpg")!]
            
            transverseProcessFracture.injuryImages = [UIImage(named: "Transverse Process Fracture Unmarked.jpg")!]
            transverseProcessFracture.injuryImagesMarked = [UIImage(named: "Transverse Process Fracture Marked.jpg")!]
        }
    }
    
    func chest(){
        frontalChest.normalImage = UIImage(named: "AP Chest Normal Unmarked.jpg")!
        frontalChest.markedImageByComponents = [apChestHilum, apChestAorticKnob, apChestBronchus, apChestCarina, apChestDiaphragm, apChestHeart, apChestMediastinum, apChestTrachea]
        frontalChest.steps = [UIImage(named: "AP Chest Normal Unmarked.jpg")!, UIImage(named: "AP Chest Step 2.png")!, UIImage(named: "AP Chest Step 3.png")!, UIImage(named: "AP Chest Step 4.png")!, UIImage(named: "AP Chest Step 5.png")!, UIImage(named: "AP Chest Step 6.png")!, UIImage(named: "AP Chest Step 7.png")!, UIImage(named: "AP Chest Step 8.png")!, UIImage(named: "AP Chest Step 9.png")!, UIImage(named: "AP Chest Step 10.png")!, UIImage(named: "AP Chest Step 11.png")!, UIImage(named: "AP Chest Step 12.png")!, UIImage(named: "AP Chest Step 13.png")!, UIImage(named: "AP Chest Step 14.png")!, UIImage(named: "AP Chest Step 15.png")!]
        
        lateralChest.normalImage = UIImage(named: "Lateral Chest Normal Unmarked.jpg")!
        lateralChest.markedImageByComponents = [lateralChestHeart, lateralChestAorta, lateralChestSpine, lateralChestRightDiaphragm, lateralChestLeftDiaphragm, lateralChestHorizontalFissure, lateralChestObliqueFissure]
        lateralChest.steps = [UIImage(named: "Lateral Chest Step 1.png")!, UIImage(named: "Lateral Chest Step 2.png")!, UIImage(named: "Lateral Chest Step 3.png")!, UIImage(named: "Lateral Chest Step 4.png")!, UIImage(named: "Lateral Chest Step 5.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            apShoulder.normalImage = UIImage(named: "AP Shoulder Normal Unmarked.jpg")!
            apShoulder.markedImage = UIImage(named: "AP Shoulder Normal Marked.jpg")!
            clavicleFracture.injuryImages = [UIImage(named: "AP Clavicle Fracture Unmarked.jpg")!]
            clavicleFracture.injuryImagesMarked = [UIImage(named: "Clavicle Fracture Marked.jpg")!]
            
            proximalHumerusFracture.injuryImages = [UIImage(named: "AP Proximal Humerus Fracture Unmarked.jpg")!]
            proximalHumerusFracture.injuryImagesMarked = [UIImage(named: "AP Proximal Humerus Fracture Marked.jpg")!]
            
            pneumonia.injuryImages = [UIImage(named: "RML Pneumonia Unmarked.jpg")!, UIImage(named: "RML Pneumonia Lateral Unmarked.jpg")!, UIImage(named: "Atypical Pneumonia Unmarked.jpg")!]
            pneumonia.injuryImagesMarked = [UIImage(named: "RML Pneumonia Marked.jpg")!, UIImage(named: "RML Pneumonia Lateral Marked.jpg")!, UIImage(named: "Atypical Pneumonia Marked.jpg")!]
            
            aspiratedForeignBody.injuryImages = [UIImage(named: "Inhaled Foreign Body Unmarked.jpg")!]
            aspiratedForeignBody.injuryImagesMarked = [UIImage(named: "Inhaled Foreign Body Marked.jpg")!]
            
            tensionPneumothorax.injuryImages = [UIImage(named: "Tension Pneumothorax Unmarked.jpg")!]
            tensionPneumothorax.injuryImagesMarked = [UIImage(named: "Tension Pneumothorax Marked.jpg")!]
            
            openPneumothorax.injuryImages = [UIImage(named: "Pneumothorax Unmarked.jpg")!]
            openPneumothorax.injuryImagesMarked = [UIImage(named: "Pneumothorax Marked.jpg")!]
            
            pleuralEffusion.injuryImages = [UIImage(named: "Pleural Effusion Unmarked.jpg")!]
            pleuralEffusion.injuryImagesMarked = [UIImage(named: "Pleural Effusion Marked.jpg")!]
            
            aorticDissection.injuryImages = [UIImage(named: "Aortic Dissection Unmarked.jpg")!]
            aorticDissection.injuryImagesMarked = [UIImage(named: "Aortic Dissection Marked.jpg")!]
            
            heartFailure.injuryImages = [UIImage(named: "Heart Failure Unmarked.jpg")!]
            heartFailure.injuryImagesMarked = [UIImage(named: "Heart Failure Marked.jpg")!]
            
            nodule.injuryImages = [UIImage(named: "Pulmonary Nodule Unmarked.jpg")!]
            nodule.injuryImagesMarked = [UIImage(named: "Pulmonary Nodule Marked.jpg")!]
            
            perforatedViscus.injuryImages = [UIImage(named: "Perforated Viscus Unmarked.jpg")!]
            perforatedViscus.injuryImagesMarked = [UIImage(named: "Perforated Viscus Marked.jpg")!]
            
            ribFracture.injuryImages = [UIImage(named: "Rib Fractures Unmarked.jpg")!]
            ribFracture.injuryImagesMarked = [UIImage(named: "Rib Fractures Marked.jpg")!]
            
            etTube.injuryImages = [UIImage(named: "Long ET Tube Unmarked.jpg")!]
            etTube.injuryImagesMarked = [UIImage(named: "Long ET Tube Marked.jpg")!]
            
            centralLine.injuryImages = [UIImage(named: "Misplaced Central Line Unmarked.jpg")!]
            centralLine.injuryImagesMarked = [UIImage(named: "Misplaced Central Line Marked.jpg")!]
            
            ngTube.injuryImages = [UIImage(named: "Misplaced NG Tube Unmarked.jpg")!]
            ngTube.injuryImagesMarked = [UIImage(named: "Misplaced NG Tube Marked.jpg")!]            
        }
    }
    
    func abdomen(){
        abdominal.normalImage = UIImage(named: "Abdominal Normal Unmarked.jpg")!
        abdominal.markedImage = UIImage(named: "Abdominal Normal Marked.jpg")!
        abdominal.steps = [UIImage(named: "Abdominal Step 1.png")!, UIImage(named: "Abdominal Step 2.png")!, UIImage(named: "Abdominal Step 3.png")!]
        
        let injuryImageQueue = DispatchQueue(label: "injuryImageData", qos: DispatchQoS.userInitiated)
        injuryImageQueue.async {
            largeBowelObstruction.injuryImages =  [UIImage(named: "Large Bowel Obstruction Unmarked.jpg")!]
            largeBowelObstruction.injuryImagesMarked = [UIImage(named: "Large Bowel Obstruction Marked.jpg")!]
            
            smallBowelObstruction.injuryImages = [UIImage(named: "Small Bowel Obstruction Unmarked.jpg")!]
            smallBowelObstruction.injuryImagesMarked = [UIImage(named: "Small Bowel Obstruction Marked.jpg")!]
            
            perforatedViscus.injuryImages = [UIImage(named: "Perforated Viscus Unmarked.jpg")!]
            perforatedViscus.injuryImagesMarked = [UIImage(named: "Perforated Viscus Marked.jpg")!]
            frontalChest.normalImage = UIImage(named: "AP Chest Normal Unmarked.jpg")!
            frontalChest.markedImageByComponents = [apChestHilum, apChestAorticKnob, apChestBronchus, apChestCarina, apChestDiaphragm, apChestHeart, apChestMediastinum, apChestTrachea]
            
            pneumonia.injuryImages = [UIImage(named: "RML Pneumonia Unmarked.jpg")!, UIImage(named: "RML Pneumonia Lateral Unmarked.jpg")!, UIImage(named: "Atypical Pneumonia Unmarked.jpg")!]
            pneumonia.injuryImagesMarked = [UIImage(named: "RML Pneumonia Marked.jpg")!, UIImage(named: "RML Pneumonia Lateral Marked.jpg")!, UIImage(named: "Atypical Pneumonia Marked.jpg")!]
            lateralChest.normalImage = UIImage(named: "Lateral Chest Normal Unmarked.jpg")!
            lateralChest.markedImageByComponents = [lateralChestHeart, lateralChestAorta, lateralChestSpine, lateralChestRightDiaphragm, lateralChestLeftDiaphragm, lateralChestHorizontalFissure, lateralChestObliqueFissure]
        }
    }
}
