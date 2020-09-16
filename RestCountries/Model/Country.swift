//
//  Country.swift
//  RestCountries
//
//  Created by sindija.dzintare on 16/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import Foundation

struct Country {
    
    let name: String?
    let capital: String?
    let region: String?
    
    init(item: [String: Any]) {
        name = item["name"] as? String
        capital = item["capital"] as? String
        region = item["region"] as? String
    }
    
    static func getArray(from arrayOfItems: Any) -> [Country]? {
        
        guard let arrayOfItems = arrayOfItems as? Array<[String:Any]> else {return nil}
        return arrayOfItems.compactMap {(Country(item: $0))}
    }
    
}
