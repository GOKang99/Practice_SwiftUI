//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Omer on 1/30/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks){ landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
