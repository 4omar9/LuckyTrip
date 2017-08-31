//
//  HomeVC.swift
//  LuckyTrip-technical
//
//  Created by Omar Almasri on 8/31/17.
//  Copyright © 2017 Omar. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

	@IBOutlet weak var countryBtn: UIButton!
	@IBOutlet weak var airportBtn: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.btnUISetup()

	}
	
	
	func btnUISetup()  {
		countryBtn.layer.cornerRadius = countryBtn.layer.frame.size.width/2
		countryBtn.layer.masksToBounds = true
		airportBtn.layer.cornerRadius = airportBtn.layer.frame.size.width/2
		airportBtn.layer.masksToBounds = true
	}
	
	@IBAction func countryAction(_ sender: Any) {
		
	}
	
	@IBAction func airportAction(_ sender: Any) {
		
	}
	
}
