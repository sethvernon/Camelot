//
//  ConsentController.swift
//  Camelot
//
//  Created by Seth on 6/22/15.
//  Copyright (c) 2015 Seth. All rights reserved.
//

import UIKit
import ResearchKit



class ConsentController: UIViewController, ORKTaskViewControllerDelegate {
  
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        
        //Handle results with taskViewController.result
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func consent(sender: AnyObject, forEvent event: UIEvent)
    {
        // do someting with the consent button
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
       }
    

