//
// Created by makai on 2018/10/23.
// Copyright (c) 2018 makai. All rights reserved.
//

import UIKit

class SlideViewController: UIViewController, UIGestureRecognizerDelegate {


    enum SlideOutState {
        case sliding
        case holding
        case standing
    }

    var homeMainCV: MainViewController = MainViewController()
    var homeMenuCV: MenuViewController = MenuViewController()
    var sliding = false

    var currentState: SlideOutState = .standing {
        didSet {
            showShadow(shouldShow: currentState != .standing)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(homeMainCV.view)
        self.addChildViewController(homeMainCV)
        view.insertSubview(homeMenuCV.view, belowSubview: homeMainCV.view)
        self.addChildViewController(homeMenuCV)
        homeMenuCV.didMove(toParentViewController: self)
        let touch = UIPanGestureRecognizer(target: self
                , action: #selector(onTouch(pan:)))
        homeMainCV.view.addGestureRecognizer(touch)
        let click = UITapGestureRecognizer(target: self, action: #selector(onClick))
        homeMainCV.view.addGestureRecognizer(click)
    }

    @objc func onClick() {
        if currentState == .sliding {
            closeMenu()
        }
    }

    @objc func onTouch(pan: UIPanGestureRecognizer) {
        switch pan.state {
        case .began:
            sliding = pan.location(in: view).x < view.bounds.size.width * 0.2
                    || currentState == .sliding
            if currentState == .standing {
                showShadow(shouldShow: true)
            }
        case .changed:
            if sliding {
                currentState = .holding
                if let rview = pan.view {
                    rview.center.x = rview.center.x + pan.translation(in: view).x
                    pan.setTranslation(CGPoint.zero, in: view)
                }
            }
        case .ended:
            if sliding {
                if let rview = pan.view {
                    if rview.center.x > view.bounds.size.width {
                        openMenu()
                    } else {
                        closeMenu()
                    }
                }
            }
        default:
            break
        }
    }

    func openMenu() {
        currentState = .sliding
        animateX(targetPosition: homeMenuCV.view.frame.width
                - UIScreen.main.bounds.width * 0.2)
    }

    func closeMenu() {
        animateX(targetPosition: 0) { finished in
            self.currentState = .standing
        }
    }

    func animateX(targetPosition: CGFloat, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: 0.5,
                delay: 0,
                usingSpringWithDamping: 0.8,
                initialSpringVelocity: 0,
                options: .curveEaseInOut, animations: {
            self.homeMainCV.view.frame.origin.x = targetPosition
        }, completion: completion)
    }

    func showShadow(shouldShow: Bool) {
        homeMainCV.view.layer.shadowOpacity = shouldShow ? 0.8 : 0
    }


}
