//
//  ViewController.swift
//  eureka
//
//  Created by Phil on 8/6/19.
//  Copyright © 2019 Phil. All rights reserved.
//

import UIKit
import MapKit
/* ref:
 https://developer.apple.com/documentation/mapkit
 https://www.ioscreator.com/tutorials/mapkit-ios-tutorial
*/


class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 40.310058, longitude: -75.129884)
    
    let regionRadius: CLLocationDistance = 750
    
    func prepareMap(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        let annotation = MKPointAnnotation()

        mapView.setRegion(coordinateRegion, animated: true)
        
        annotation.coordinate = location.coordinate
        annotation.title = "Eureka Records"
        annotation.subtitle = "Our place!"
        mapView.addAnnotation(annotation)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prepareMap(location: initialLocation)
        
        
      

    }


}

