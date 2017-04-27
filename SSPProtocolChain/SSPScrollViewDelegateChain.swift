//
//  SSPScrollViewDelegateChain.swift
//  SocialComponents
//
//  Created by Sergey Lomov on 4/27/17.
//  Copyright © 2017 Rozdoum. All rights reserved.
//

import UIKit

open class SSPScrollViewDelegateChain: SSPProtocolChain<UIScrollViewDelegate>, UIScrollViewDelegate {
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for receiver in receivers {
            receiver.scrollViewDidScroll?(scrollView)
        }
    }

    public func scrollViewDidZoom(_ scrollView: UIScrollView) {
        for receiver in receivers {
            receiver.scrollViewDidZoom?(scrollView)
        }
    }
    
    public func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        for receiver in receivers {
            receiver.scrollViewWillBeginDragging?(scrollView)
        }
    }
    
    public func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        for receiver in receivers {
            receiver.scrollViewWillEndDragging?(scrollView, withVelocity: velocity, targetContentOffset: targetContentOffset)
        }
    }
    
    public func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        for receiver in receivers {
            receiver.scrollViewDidEndDragging?(scrollView, willDecelerate: decelerate)
        }
    }
    
    public func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        for receiver in receivers {
            receiver.scrollViewWillBeginDecelerating?(scrollView)
        }
    }
    
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        for receiver in receivers {
            receiver.scrollViewDidEndDecelerating?(scrollView)
        }
    }
    
    
    public func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        for receiver in receivers {
            receiver.scrollViewDidEndScrollingAnimation?(scrollView)
        }
    }
    
    public func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        for receiver in receivers {
            let returnValue = receiver.viewForZooming?(in: scrollView)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return scrollView
    }
    
    public func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        for receiver in receivers {
            receiver.scrollViewWillBeginZooming?(scrollView, with: view)
        }
    }
    
    public func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        for receiver in receivers {
            receiver.scrollViewDidEndZooming?(scrollView, with: view, atScale: scale)
        }
    }
    
    public func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        for receiver in receivers {
            let returnValue = receiver.scrollViewShouldScrollToTop?(scrollView)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return true
    }
    
    public func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        for receiver in receivers {
            receiver.scrollViewDidScrollToTop?(scrollView)
        }
    }
}
