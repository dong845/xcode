//
//  TravelModel.swift
//  m2_l16
//
//  Created by 吕东杭 on 2021/12/31.
//

import Foundation

class TravelModel: ObservableObject {
    @Published var travel = [Travel]()
    init(){
        let travel_path = Bundle.main.path(forResource: "Data", ofType: "json")
        if travel_path != nil {
            let travel_url = URL(fileURLWithPath: travel_path!)
            do{
                let travel_data = try Data(contentsOf: travel_url)
                let travel_decoder = JSONDecoder()
                do{
                    var travel_output = try travel_decoder.decode([Travel].self, from: travel_data)
                    for r in travel_output{
                        r.id = UUID()
                    }
                    self.travel = travel_output
                }catch{
                    print(error)
                    print("Error Happened")
                }
            }catch{
                print(error)
                print("Error Happened")
            }
        }
    }
    
}
