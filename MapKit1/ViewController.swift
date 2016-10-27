//
//  ViewController.swift
//  MapKit1
//
//  Created by Yury Gitman on 10/24/16.
//  Copyright © 2016 com.yuryg. All rights reserved.
//
// Notes  
/*

 CoreLocation - Anything related to location.
 Intro - Determines User's Location
    CLLocationManager - Settings: desiredAccuracy, activityType(what you are doing)
    CLLocation - Object that gives updates. It encapulses Lat, Long, Altitude, Floor.
    CLLocationManagerDelegate - Allows you to respond to updates as they arrive. 
                                Location Updates, did enter region, error events, authorization changes
    Permisson System. - "Always Auth" or "When In use" (when app is running)
        NSLocationWhenInUserUsageDescription - In Plist
        NSLocationAlwaysUsageDescription - In Plist  (Can be changed again in Setting App) 
 
 Background Updates
 Geocoding
 Region Monitoring
 
 
 MapKit - All Map related features.
 Intro
 Annotation
 Overlays
 Flyover Maps
 
 
 */
 
import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}

