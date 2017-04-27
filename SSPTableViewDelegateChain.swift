//
//  SSPTableViewDelegateChain.swift
//  SSPProtocolChain
//
//  Created by Sergey Lomov on 4/27/17.
//  Copyright © 2017 SSP. All rights reserved.
//

import UIKit

open class SSPTableViewDelegateChain: SSPProtocolChain<UITableViewDelegate>, UITableViewDelegate {

    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, willDisplay: cell, forRowAt: indexPath)
        }
    }
    
    public func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        for receiver in receivers {
            receiver.tableView?(tableView, willDisplayHeaderView: view, forSection: section)
        }
    }
    
    public func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        for receiver in receivers {
            receiver.tableView?(tableView, willDisplayFooterView: view, forSection: section)
        }
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, didEndDisplaying: cell, forRowAt: indexPath)
        }
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        for receiver in receivers {
            receiver.tableView?(tableView, didEndDisplayingHeaderView: view, forSection: section)
        }
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        for receiver in receivers {
            receiver.tableView?(tableView, didEndDisplayingFooterView: view, forSection: section)
        }
    }

    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, heightForRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.rowHeight
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, heightForHeaderInSection: section)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.sectionHeaderHeight
    }
    
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, heightForFooterInSection: section)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.sectionFooterHeight
    }

    public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, estimatedHeightForRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.estimatedRowHeight
    }
    
    public func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, estimatedHeightForHeaderInSection: section)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.estimatedSectionHeaderHeight
    }
    
    public func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, estimatedHeightForFooterInSection: section)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.estimatedSectionFooterHeight
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, viewForHeaderInSection: section)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.headerView(forSection: section)
    }
    
    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, viewForFooterInSection: section)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return tableView.footerView(forSection: section)
    }
    
    public func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, accessoryButtonTappedForRowWith: indexPath)
        }
    }

    public func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, shouldHighlightRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return true
    }
    
    public func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, didHighlightRowAt: indexPath)
        }
    }
    
    public func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, didUnhighlightRowAt: indexPath)
        }
    }

    public func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, willSelectRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return indexPath
    }
    
    public func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, willDeselectRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return indexPath
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, didSelectRowAt: indexPath)
        }
    }
    
    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, didDeselectRowAt: indexPath)
        }
    }
    
    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, editingStyleForRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return .delete
    }
    
    public func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, titleForDeleteConfirmationButtonForRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return "Delete"
    }
    
    
    public func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, editActionsForRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return nil
    }
    
    public func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, shouldIndentWhileEditingRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return true
    }
    
    public func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
        for receiver in receivers {
            receiver.tableView?(tableView, willBeginEditingRowAt: indexPath)
        }
    }
    
    public func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
        for receiver in receivers {
            receiver.tableView?(tableView, didEndEditingRowAt: indexPath)
        }
    }
    
    public func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, targetIndexPathForMoveFromRowAt: sourceIndexPath, toProposedIndexPath: proposedDestinationIndexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return proposedDestinationIndexPath
    }
    
    public func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, indentationLevelForRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return indexPath.row
    }
    
    public func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, shouldShowMenuForRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return false
    }
    
    public func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, canPerformAction: action, forRowAt: indexPath, withSender: sender)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return false
    }
    
    public func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
        for receiver in receivers {
            receiver.tableView?(tableView, performAction: action, forRowAt: indexPath, withSender: sender)
        }
    }
    
    public func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, canFocusRowAt: indexPath)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return true
    }
    
    public func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool {
        for receiver in receivers {
            let returnValue = receiver.tableView?(tableView, shouldUpdateFocusIn: context)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return true
    }
    
    public func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        for receiver in receivers {
            receiver.tableView?(tableView, didUpdateFocusIn: context, with: coordinator)
        }
    }
    
    public func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath? {
        for receiver in receivers {
            let returnValue = receiver.indexPathForPreferredFocusedView?(in: tableView)
            if returnValue != nil {
                return returnValue!
            }
        }
        
        return nil
    }
}
