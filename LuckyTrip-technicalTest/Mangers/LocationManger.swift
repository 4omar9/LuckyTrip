//
//  LocationManger.swift
//  LuckyTrip-technical
//
//  Created by Omar Almasri on 8/31/17.
//  Copyright © 2017 Omar. All rights reserved.
//

import UIKit
import CoreLocation


class LocationManger: NSObject, CLLocationManagerDelegate {
	
	static let locManager = CLLocationManager()
	static var userLatitude : String?
	static var userLongitude : String?
	
//	static func getUserLocation(completionHandler:@escaping (_ latitude : String,_ longitude : String) -> ()) {
//		var currentLocation: CLLocation!
//		locManager.requestWhenInUseAuthorization()
//		if (CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedWhenInUse ||
//			CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedAlways){
//			currentLocation = locManager.location
//			completionHandler (String(currentLocation.coordinate.latitude), String(currentLocation.coordinate.longitude))
//		}
//	}
	static func getUserLocation() {
		var currentLocation: CLLocation!
		locManager.requestWhenInUseAuthorization()
		if (CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedWhenInUse ||
			CLLocationManager.authorizationStatus() == CLAuthorizationStatus.authorizedAlways){
			currentLocation = locManager.location
			self.userLatitude = String(currentLocation.coordinate.latitude)
			self.userLongitude = String(currentLocation.coordinate.longitude)
		}

	}
	
	
}
