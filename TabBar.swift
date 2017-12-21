/************************************************************************************************************************************/
/** @file       TabBar.swift
 *  @project    0_0 - UITabBar
 *  @brief      x
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    12/21/17
 *  @last rev   12/21/17
 *
 *  @section     Reference
 *      http://stackoverflow.com/questions/24046898/how-do-i-create-a-new-swift-project-without-using-storyboards
 *      http://stackoverflow.com/questions/24030348/how-to-create-a-button-programmatically
 *      http://stackoverflow.com/questions/24102191/make-a-uibutton-programatically-in-swift
 *
 * @section    Opens
 *
 * @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class TabBar : NSObject {

    var tbc : UITabBarController;


    /********************************************************************************************************************************/
    /** @fcn        init()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override init() {
        print("hello world");
        
        self.tbc = UITabBarController();
        
        return;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented");
    }

func getUITabBarController() -> UITabBarController {
    return tbc;
}
}
