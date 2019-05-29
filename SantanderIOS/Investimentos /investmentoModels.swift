//
//  investmentoModels.swift
//  santanderTest
//
//  Created by Adauto Oliveira on 27/05/19.
//  Copyright (c) 2019 Adauto Oliveira. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum investmento
{
  // MARK: Use cases
  
  enum Something
  {
    struct Request
    {
    }
    struct Response{
        var screen: [Screen]
    }
    struct ViewModel{
        struct DiplayedInvest: Codable {
            
            var title: String
            var fundName: String
            var whatIs: String
            var definition: String
            var riskTitle: String
            var risk: Int
            var infoTitle: String
//            var moreInfo: [String: Any]?
            var fund: Double
            var CDI: Double
//            var info: [[String: String]]?
            var name: String
            var data: String
            
            
        }
        
        var diplayedInvest: [DiplayedInvest]
        
        
        
       
    }
  }
}