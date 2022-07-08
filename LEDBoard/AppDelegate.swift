//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by 이현호 on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //실제 서비스를 만들때는 사용 지양함
//        sleep(10) //런치스크린에서 (초)동안 머물다가 넘어감
        
        return true
    }
    
    
//    //iOS12까지 사용함
    func applicationDidEnterBackground(_ application: UIApplication) {
        //melon, youtube - 사용자 프리미엄 결제 했으면 play, 일시정지

    }
    
    //active 상태로 돌아옴
    func applicationWillEnterForeground(_ application: UIApplication) {
        //youtube - 결제 안한 사람에게 팝업창 띄워!
        //kakaotalk - 비밀번호 설정 해놓은 사람들에게 다시 비밀번호 입력창 띄우기
        //금융 - 백그라운드로 들어갔을때 실행화면 안보이게 막아줘
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

