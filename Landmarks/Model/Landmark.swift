//
//  Landmark.swift
//  Landmarks
//
//  Created by Omer on 1/30/25.
//

import Foundation
import SwiftUI
import CoreLocation

//Hashble은 해시값은 객체의 데이터를 나타내는 고유의 값.
//객체를 해시값으로 변환하여 저장,해시값을 기반으로 객체를 비교.,필요하면 개발자가 직접 고유한 해시값 생성 방법을 정의.
//Codable은 Json외부 데이터를 인코딩 디코딩 가능하도록 해준다.
struct Landmark: Hashable, Codable,Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    
    private var imageName: String
    var image: Image {
            Image(imageName)
        }
    
    private var coordinates: Coordinates//Coordinates라는 데이터 타입
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable { //Coordinates란 데이터 타입을 정의
        var latitude: Double
        var longitude: Double
    }
}
