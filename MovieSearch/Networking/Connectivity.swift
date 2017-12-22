//
//  Connectivity.swift
//  MovieSearch
//
//  Created by Andrii Kravchenko on 22.12.17.
//

import Alamofire

protocol Connectivity {
    var isInternetConnected: Bool { get }
}

class ConnectivityHandler: Connectivity {
    let reachability: NetworkReachabilityManager?
    
    init(reachability: NetworkReachabilityManager?) {
        self.reachability = reachability
    }
    
    var isInternetConnected: Bool {
        return reachability?.isReachable ?? false
    }
}
