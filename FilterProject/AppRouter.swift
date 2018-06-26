//
//  DCAppRouter.swift
//  FilterProject
//
//  Created by Rodrigo Vianna on 26/06/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class AppRouter {
    static let shared = AppRouter()
    var rootViewController: UIViewController?
    
    func show(_ vc: UIViewController) {
        var showVc = vc
        if let nav = vc as? UINavigationController {
            showVc = nav.topViewController ?? vc
        }
        
        showVc.hidesBottomBarWhenPushed = true
        if let navVc = rootViewController as? UINavigationController {
            navVc.topViewController?.show(showVc, sender: self)
        } else if let tabVc = rootViewController as? UITabBarController {
            tabVc.selectedViewController?.show(showVc, sender: nil)
        } else {
            rootViewController?.show(showVc, sender: self)
        }
    }
    
    func present(_ vc: UIViewController) {
        rootViewController?.modalPresentationCapturesStatusBarAppearance = true
        rootViewController?.present(vc, animated: true, completion: nil)
    }
}
