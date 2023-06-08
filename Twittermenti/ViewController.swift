//
//  ViewController.swift
//  Twittermenti
//
//  Created by Angela Yu on 17/07/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import SwifteriOS


/*
    Given a csv data, we used CreateML to train a model.
 
 import Cocoa
 import CreateML

 let data = try MLDataTable(contentsOf: URL(filePath: "./twitter-sanders-apple3.csv"))

 let(trainingData, testingData) = data.randomSplit(by: 0.80, seed: 5)

 let sentimentClassifier = try MLTextClassifier(trainingData: trainingData, textColumn: "text", labelColumn: "class")

 let evaluationMetrics = sentimentClassifier.evaluation(on: testingData, textColumn: "text", labelColumn: "class")

 let evaluationAccuracy = (1.00 - evaluationMetrics.classificationError) * 100

 let metaData = MLModelMetadata(author: "KUCH", shortDescription: "A simple twitter sentiment analysis model", version: "0.1")

 //try sentimentClassifier.write(to: URL(fileURLWithPath: "./TweetSentimentClassifier.mlmodel"))

 try sentimentClassifier.prediction(from: "@Apple loves beans.")

 
 We were supposed to use this model for sentiment analysis on Twitter, but the Basic Tiar for Twitter APIs no longer allow Standard Search. So, on this section, I coded along until Lesson 355.
 
 Here's the error response:
 [!] SwifterError(message: "HTTP Status 403: Forbidden, Response: {\"errors\":[{\"message\":\"You currently have access to a subset of Twitter API v2 endpoints and limited v1.1 endpoints (e.g. media post, oauth) only. If you need access to this endpoint, you may need a different access level. You can learn more here: https://developer.twitter.com/en/portal/product\",\"code\":453}]}
 
 
 Nonetheless, the fundamental difference between this section and the previous sections are:
    i) using CreateML to train a model;
    ii) manually dragging and embedding Swifter into our project;
        Swifter simplifies working with Twitter API. Nonetheless, the project is deprecated.
 */

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!

    let swifter = Swifter(consumerKey: "CONSUMER KEY GOES HERE", consumerSecret: "CONSUMER SECRET GOES HERE")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swifter.searchTweet(using: "@Apple") { resultsJSON, searchMetadata in
            print("resultsJSON: \(resultsJSON).")
            print("searchMetadata: \(searchMetadata)")
        } failure: { error in
            print("[!] \(error)")
        }

    }

    @IBAction func predictPressed(_ sender: Any) {
        
    }
    
}

