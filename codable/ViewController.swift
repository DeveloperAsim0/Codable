//
//  ViewController.swift
//  codable
//
//  Created by Mihir Vyas on 16/04/20.
//  Copyright © 2020 Mihir Vyas. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        API_CAll()
        // Do any additional setup after loading the view.
    }

    func API_CAll() {
        let URL_STRING = "https://newsapi.org/v2/everything?q=bitcoin&from=2020-03-16&sortBy=publishedAt&apiKey=fa1d50d2ae0b42598b8051ff3dab9b7e"
       // let url = URL(string: URL_STRING)
        AF.request(URL_STRING).responseJSON { (response) in
            switch response.result {
            case.success:
                let data = response.data
                let decoder = JSONDecoder()
                   do {
                let newsfeed = try  decoder.decode(NewsFeed.self, from: data!)
                       print(newsfeed)
                   } catch {
                       print("heihriuheiurhiughiudfg")
                }
                break
            case .failure:
                print(Error.self)
            }
            
        }
    }
}
