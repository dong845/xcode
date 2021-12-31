//
//  Travel.swift
//  m2_l16
//
//  Created by 吕东杭 on 2021/12/31.
//

import Foundation

class Travel:Identifiable, Decodable {
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
}
