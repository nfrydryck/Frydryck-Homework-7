//
//  LocationViewController.swift
//  Frydryck Homework 7
//
//  Created by Natalie Frydryck on 4/3/20.
//  Copyright © 2020 Natalie Frydryck. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var distanceLabel: UILabel!
    
    let locMan: CLLocationManager = CLLocationManager()
    var startLocation: CLLocation!
    
    
    
    let kpoolLatitude: CLLocationDegrees = 38.88893
    let kpoolLongitude: CLLocationDegrees = 77.0447
    
    func locationManager(_manger: CLLocation, didUpdateLocations locations: [CLLocation]) {
        let newLocation: CLLocation=locations[0]
        NSLog("Something is happening")
        if newLocation.horizontalAccuracy >=0 {
            let pool:CLLocation = CLLocation(latitude: kpoolLatitue,longitude: kpoolLongitude)
            
            let delta CLLocation = pool.distance(from:newlocation)
            let miles: double = (delta * 0/000621371) + 0.5
            if miles < 3. {
                distanceLabel.text = Enjoy Lincoln Memorial Pool
            } else {
                let commaDelimited: NumberFormatter = NumberFormatter()
                commaDelimited.numderstyle=
                    NumberFormatter.Style.decimal
                distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))!+"miles to Lincoln Memorial Pool"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
