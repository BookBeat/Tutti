//
//  AlertingHintPresenter.swift
//  Tutti
//
//  Created by Daniel Saidi on 2018-01-22.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

/*
 
 This presenter displays hints with a standard alerts. It is
 mostly meant to be used as a temporary presenter, while you
 work on adding a real presenter to your app. Never ever use
 this presenter in a real world app. You must do better than
 this. Life is not a game! Come on!
 
 */

import UIKit

public class AlertingHintPresenter: HintPresenter {
    
    public init() {}
    
    public func present(hint: Hint, in vc: UIViewController, from view: UIView) {
        guard hint.shouldBePresented else { return }
        alert(hint: hint, from: vc)
    }
    
    public func present(hint: Hint, in vc: UIViewController, from barButtonItem: UIBarButtonItem) {
        guard hint.shouldBePresented else { return }
        alert(hint: hint, from: vc)
    }
    
    public func dismiss(hint: Hint) { }
}

private extension AlertingHintPresenter {
    
    func alert(hint: Hint, from vc: UIViewController) {
        let alert = UIAlertController(title: hint.title, message: hint.text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        vc.present(alert, animated: true, completion: nil)
    }
}
