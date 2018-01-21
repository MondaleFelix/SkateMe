//
//  ViewController.swift
//  SkateMe
//
//  Created by Mac on 1/19/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var contentWidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        for image in 0...2{
            let imageToDisplay = UIImage(named: "\(image).png")
            let imageView = UIImageView(image: imageToDisplay)
            
            let xCoordinate = view.frame.midX + view.frame.width * CGFloat(image)
            
            contentWidth += view.frame.width
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: xCoordinate - 250 , y: (view.frame.height / 2) - 250, width: 500, height: 500)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(200))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

