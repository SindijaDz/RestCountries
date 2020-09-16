//
//  NetworkManager.swift
//  RestCountries
//
//  Created by sindija.dzintare on 16/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
  static private let jsonURL = "https://restcountries.eu/rest/v2/all"
    
    static func fetchData(completion: @escaping ([Country]) -> ()) {
        AF.request(jsonURL).validate().responseJSON { jsonData in
            switch jsonData.result{
            case .success(let value):
                let countries = Country.getArray(from: value)
                completion(countries ?? [])
            case .failure(let error):
                print("Error: ", error)
            }
    }
}
}
