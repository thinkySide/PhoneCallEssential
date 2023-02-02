//
//  DataManager.swift
//  PhoneCallEssential
//
//  Created by 김민준 on 2023/02/02.
//

import UIKit

final class DataManager {
    
    // 최근 통화 배열
    private var recentCallDataArray: [RecentCall] = []
    
    func getRecentCallData() -> [RecentCall] {
        
        recentCallDataArray = [
            RecentCall(phoneNumber: 1084777648, sentPersonName: "밍굥이", sentLocation: "하남", sentDate: "오늘"),
            RecentCall(phoneNumber: 1094934844, sentPersonName: "민주니", sentLocation: "안산", sentDate: "어제"),
            RecentCall(phoneNumber: 1011111111, sentPersonName: "해피", sentLocation: "달토끼", sentDate: "수요일"),
            RecentCall(phoneNumber: 1022222222, sentPersonName: "민톨", sentLocation: "토성", sentDate: "토요일")
        ]
        
        return recentCallDataArray
    }
}
