//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Omer on 1/30/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark //랜드마크 데이터 변환 객체 만들기
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

//Preview는 미리보기를 생성한다. 여러 프리뷰를 만들고 캔버스에서 확인 가능
/* Group으로 묶는다면 한 프리뷰에서 여러개 확인 가능
 #Preview("Turtle Rock") {
    Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
*/

#Preview("Turtle Rock") {
    let landmarks = ModelData().landmarks
    return Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
}

