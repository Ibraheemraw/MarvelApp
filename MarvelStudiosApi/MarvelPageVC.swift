//
//  MarvelPageVC.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/27/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class MarvelPageVC: UIPageViewController {
lazy var allVC = [self.getViewController(storyboard: "trailers"),self.getViewController(storyboard: "comics"),self.getViewController(storyboard: "characters")]
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        setViewControllers([allVC[0]], direction: .forward, animated: true, completion: nil)
       print("test commit")
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
