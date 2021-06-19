//
//  HomePage.swift
//  UIElements
//
//  Created by DCS on 18/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//
import Foundation
import UIKit

class HomePage: UIViewController {

    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Welcome "
        label.textAlignment = .center
        label.font = label.font.withSize(30)
        //label.backgroundColor = UIColor.lightGray
        return label
    }()
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "developer.jpg")
        return imageView
    }()
    
    private let profileButton:UIButton = {
        let button = UIButton()
        button.setTitle("Profile", for: .normal)
        // button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let progressLabel:UILabel = {
        let label = UILabel()
        label.text = "Your Progress Activity "
        label.textAlignment = .left
        label.font = label.font.withSize(20)
        return label
    }()
    
    private let myProgressView:UIProgressView = {
        let progressView = UIProgressView()
        progressView.setProgress(0.0, animated: true)
        return progressView
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 10.0) {
            self.myProgressView.setProgress(1.0, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
        view.backgroundColor = .white
        view.addSubview(myLabel)
        view.addSubview(myImageView)
        view.addSubview(profileButton)
        view.addSubview(progressLabel)
        view.addSubview(myProgressView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
        myImageView.frame = CGRect(x: 20, y: myLabel.bottom + 20, width: view.width - 40, height: 80)
        profileButton.frame = CGRect(x: 20, y: myImageView.bottom + 20, width: view.width - 40, height: 40)
        progressLabel.frame = CGRect(x: 20, y: profileButton.bottom + 20, width: view.width - 40, height: 40)
        myProgressView.frame = CGRect(x: 20, y: progressLabel.bottom + 20, width: view.width - 40, height: 40)    }
    
    //@objc func handleButtonClick() {
    //    print("Clicked!")
    //
    //let vc = HomePage()
    
    //navigationController?.pushViewController(vc, animated: true)
    //}
    
}
