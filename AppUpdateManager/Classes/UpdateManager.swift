//
//  UpdateManager.swift
//  AppUpdateManager
//
//  Created by lw-66 on 29/09/22.
//

import Foundation
import UIKit
import AVFoundation

public class UpdateManager : NSObject {
    private var appId: String = ""
    private var window: UIWindow?
    
    public func setAppId(_ appId: String, isShowNativeUI: Bool = false) -> (Void) {
        self.appId = appId;
        if(isShowNativeUI) {
            AppUpdateRequest.fetchAppUpdate(self.appId) { (appUpdateData) in
                let items = appUpdateData.count;
                if (items > 0) {
                    let bundle = Bundle(for: type(of: self))
                    let storyboard = UIStoryboard(name: "AppUpdate", bundle: bundle)
                    let modalVc = storyboard.instantiateViewController(withIdentifier: "MaintenanceViewController") as! MaintenanceViewController
                    modalVc.updateDataDictionary = appUpdateData
                    DispatchQueue.main.sync {
                        let navController = UINavigationController(rootViewController: modalVc)
                        navController.modalPresentationStyle = .overCurrentContext
                        let topController = UIApplication.topMostViewController()
                        topController?.present(navController, animated: true, completion: nil)
                    }
                }
            }
        }
    }
    
    public func checkForAppUpdate(_ completion : @escaping (NSDictionary) -> ()) {
        AppUpdateRequest.fetchAppUpdate(self.appId) { (appUpdateData) in
            completion(appUpdateData)
        }
    }
}
