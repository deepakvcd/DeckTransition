//
//  ModalViewController.swift
//  DeckTransition
//
//  Created by Harshil Shah on 15/10/16.
//  Copyright © 2016 Harshil Shah. All rights reserved.
//

import UIKit
import DeckTransition

class ModalViewController: UIViewController {

    let textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        modalPresentationCapturesStatusBarAppearance = true
        
        view.backgroundColor = .white
        
        textView.isEditable = false
        textView.isSelectable = false
        textView.showsVerticalScrollIndicator = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.systemFont(ofSize: 40, weight: .heavy)
        textView.textAlignment = .center
        textView.text = """
        This is the presented modal view controresent another modal
        """
        
        view.addSubview(textView)
        textView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        textView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        textView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
	
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.viewWasTapped))
        view.addGestureRecognizer(tap)
    }
    
    @objc func viewWasTapped() {
        let modal = ModalViewController()
        let transitionDelegate = DeckTransitioningDelegate()
        modal.transitioningDelegate = transitionDelegate
        modal.modalPresentationStyle = .custom
        present(modal, animated: true, completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
	
}
