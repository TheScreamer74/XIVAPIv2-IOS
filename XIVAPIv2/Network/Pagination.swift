//
//  Pagination.swift
//  XIVAPIv2
//
//  Created by Thomas on 25/06/2020.
//  Copyright © 2020 Thomas. All rights reserved.
//

import Foundation

struct Pagination: Decodable {
    let page: Int
    let pageNext: Int?
    let pagePrev: Int?
    let pageTotal: Int
    let results: Int
    let resultsPerPage: Int
    let resultsTotal: Int
    
    enum CodingKeys: String, CodingKey {
        case page = "Page"
        case pageNext = "PageNext"
        case pagePrev = "PagePrev"
        case pageTotal = "PageTotal"
        case results = "Results"
        case resultsPerPage = "ResultsPerPage"
        case resultsTotal = "ResultsTotal"
    }
}
