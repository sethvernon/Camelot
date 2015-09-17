//
//  ConsentTask.swift
//  Camelot
//
//  Created by Seth on 6/22/15.
//  Copyright (c) 2015 Seth. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentTask: ORKOrderedTask
{
    var steps = [ORKStep]()
    
    //VisualConsentStep
        var consentDocument = ConsentDocument
        let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
        steps += [visualConsentStep]
    
    
    
    //ConsentReviewStep
        let signature = consentDocument.signatures!.first as! ORKConsentSignature
        let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, inDocument: consentDocument)
        
        reviewConsentStep.text = "ReviewConsent!"
        reviewConsentStep.reasonForConsent = "Consent to join study."
        
        steps += [reviewConsentStep]
    
    
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}
