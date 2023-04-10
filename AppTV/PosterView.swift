//
//  PosterView.swift
//  AppTV
//
//  Created by ting.liu on 2023/4/10.
//

import SwiftUI
import UIKit
import TVUIKit

struct PosterView: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: PosterViewController, context: Context) {
        
    }
    
    
    typealias UIViewControllerType = PosterViewController
    
    
    func makeUIViewController(context: Context) -> PosterViewController {
        PosterViewController()
    }
}

class PosterViewController: UIViewController {
    
    let poster = TVPosterView(image: nil)
    
    let bgImage = UIImage(contentsOfFile: Bundle.main.path(forResource:"tv", ofType: "png")!)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poster.frame = CGRect(x: 0, y: 0, width: ContentView.getItemWidth(), height: ContentView.getItemHeight())
        let bgImageView = UIImageView(image: bgImage)
        bgImageView.frame = poster.bounds
        bgImageView.clipsToBounds = true
        bgImageView.layer.cornerRadius = 10
        poster.image = bgImageView.image
        view.addSubview(poster)
    }
}
