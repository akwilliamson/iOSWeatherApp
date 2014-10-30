//
//  ViewController.swift
//  WeatherApp
//
//  Created by Aaron Williamson on 10/30/14.
//  Copyright (c) 2014 Aaron Williamson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let apiKey = "3fe074e515ff889721d00e9ab2d5c346"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        let locationPoints = "19.630515, -155.986668"
        let encodedPoints = locationPoints.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        let forecastURL = NSURL(string: encodedPoints, relativeToURL: baseURL)
        let weatherData = NSData(contentsOfURL: forecastURL!, options: nil, error: nil)
        println(weatherData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
