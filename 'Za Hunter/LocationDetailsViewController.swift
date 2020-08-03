//
//  LocationDetailsViewController.swift
//  'Za Hunter
//
//  Created by Mairin Jarvis Castellano on 8/3/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit
import MapKit
class LocationDetailsViewController: UIViewController {
    
    var selectedMapItem = MKMapItem()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
           nameLabel.text = selectedMapItem.placemark.name
           var address = selectedMapItem.placemark.subThoroughfare! + " "
           address += selectedMapItem.placemark.thoroughfare! + "\n"
           address += selectedMapItem.placemark.locality! + ", "
           address += selectedMapItem.placemark.administrativeArea! + " "
           address += selectedMapItem.placemark.postalCode!
           addressLabel.text = address
           phoneLabel.text = selectedMapItem.phoneNumber
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem.name!)
    }
}

