//
//  MarvelPageVC.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/27/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class MarvelPageVC: UIPageViewController {
lazy var allVC = [self.getViewController(storyboard: "characters"),self.getViewController(storyboard: "trailers"),self.getViewController(storyboard: "comics")]
    var pageControl = UIPageControl()
    var player = AVPlayer()
    var marvelIntroPlayerVC = AVPlayerViewController()
    var introDidPlay = false
    override func viewWillAppear(_ animated: Bool) {
        let videoPath =  Bundle.main.path(forResource: "MIHD", ofType: ".mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        marvelIntroPlayerVC.player = player
        if !introDidPlay {
            self.present(marvelIntroPlayerVC, animated: true, completion: {
                self.marvelIntroPlayerVC.player?.play()
                self.introDidPlay = true
            })
        }
        
        // self.dismiss(animated: true, completion: nil)
    
    }
//    func stopIntro(){
//        self.dismiss(animated: true, completion: {
//            self.marvelIntroPlayerVC.player?.play()
//        })
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        setViewControllers([allVC[0]], direction: .forward, animated: true, completion: nil)
        delegate = self
        configPageControl()
    }
    func configPageControl(){
        pageControl = UIPageControl(frame: CGRect(x: 0, y: Int(UIScreen.main.bounds.maxY - 50), width: Int(UIScreen.main.bounds.width), height: 50))
        pageControl.numberOfPages = allVC.count
        pageControl.currentPage = 0
        pageControl.tintColor = .black
        pageControl.pageIndicatorTintColor = .white
        pageControl.currentPageIndicatorTintColor = .black
        self.view.addSubview(pageControl)
    }
    func getViewController(storyboard name: String) -> UIViewController {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
}
extension MarvelPageVC: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = allVC.firstIndex(of: viewController) else {return nil}
        let prevIndex = index - 1
        if prevIndex < 0 {
            return allVC[allVC.count - 1]
        } else {
            return allVC[prevIndex]
        }
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = allVC.firstIndex(of: viewController) else {return nil}
        let nextIndex =  index + 1
        if nextIndex == allVC.count {
            return allVC[0]
        } else {
            return allVC[nextIndex]
        }
    }
}
extension MarvelPageVC: UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentVC = pageViewController.viewControllers![0]
        self.pageControl.currentPage = allVC.index(of: pageContentVC)!
    }
}

