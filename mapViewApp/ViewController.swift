//
//  ViewController.swift
//  mapViewApp
//
//  Created by Ievgeniia Pavliuchyk on 26/03/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var lattitude = 50.62754
    var longitude = 30.4431
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let span = MKCoordinateSpan.init(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude, longitude: longitude), span: span)
        
        mapView.setRegion(region, animated: true)
        
    }

    @IBAction func standart(_ sender: Any) {
        
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func satelite(_ sender: Any) {
        
        mapView.mapType = MKMapType.satellite
    }
    
    @IBAction func hybrid(_ sender: Any) {
        
        mapView.mapType = MKMapType.hybrid
    }
    
    @IBAction func locate(_ sender: Any) {
        
    }
    
    @IBAction func directions(_ sender: Any) {
    }
}

