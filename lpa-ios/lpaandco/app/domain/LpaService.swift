//
//  LpaService.swift
//  lpaandco
//
//  Created by Rayan Mehdi on 05/05/2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import Foundation
import Alamofire
import Moya

enum LpaService: TargetType, AccessTokenAuthorizable {
    
    // MARK: - Routes
    case login(params: Parameters)
    case getMe
    case logout
    case refreshToken
    
    case getBookings
    case getBookingDetail(bookId: Int)
    
    case getParkings
    case getParkingDetail(parkingId: Int)
    case getParkingUsers(parkingId: Int)
    case getParkingQuotas(parkingId: Int)
    case getParkingQuotaDetail(parkingId: Int, quotaId: Int)
    
    case ping
    
    case getUsers
    case getUserDetail(userId: Int)
    
    case getVehicles
    case getVehicleDetail(vehicleId: Int)
    
    
    
    
    
    // MARK: - TargetType Protocol
    var baseURL: URL {
        return URL.init(string: "https://www.google.com")!
    }
    
    var path: String {
        switch self {
            
        case .login:
            return "/login/login"
        case .getMe:
            return "/login/me"
        case .logout:
            return "/login/logout"
        case .refreshToken:
            return "/login/refreshToken"
        case .getBookings:
            return "/bookings"
        case .getBookingDetail(let bookId):
            return "/bookings/\(bookId)"
        case .getParkings:
            return "/parkings"
        case .getParkingDetail(let parkingId):
            return "/parkings/\(parkingId)"
        case .getParkingUsers(let parkingId):
            return "/parkings/\(parkingId)/customers"
        case .getParkingQuotas(let parkingId):
            return "/parkings/\(parkingId)/quotas"
        case .getParkingQuotaDetail(let parkingId, let quotaId):
            return "/parkings/\(parkingId)/quotas/\(quotaId)"
        case .ping:
            return "/ping"
        case .getUsers:
            return "/users"
        case .getUserDetail(let userId):
            return "/users/\(userId)"
        case .getVehicles:
            return "vehicles"
        case .getVehicleDetail(let vehicleId):
            return "vehicles/\(vehicleId)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .login, .logout, .refreshToken:
            return .post

        default:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case let .login(params):
            return .requestParameters(parameters: params, encoding: JSONEncoding.default)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
    
    var authorizationType: AuthorizationType? {
        switch self {
        default:
            return .bearer
        }
    }
      
}
