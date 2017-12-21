/************************************************************************************************************************************/
/** @file       AppDelegate.swift
 *  @project    0_0 - UITabBar
 *  @brief      x
 *  @details    x
 *
 * @section    Opens
 *      drop as many @objc's as possible
 *      comment all function headers
 *      clean up code
 *
 * @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    @objc var views : [UIView] = [UIView]();
    
    @objc var navs  : [UINavigationController] = [UINavigationController]();
    
    @objc let tabBarHeight  : CGFloat = 49;    //emperically deduced
    @objc let stdIconHeight : CGFloat = 40;    //emperically deduced
    
    
    /********************************************************************************************************************************/
    /** @fcn        init()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds);
        
        let N : Int = 4;
  
        for i in 0..<N {
            let newView : UIView = UIView();
            
            self.setMiscBackgroundColor(newView);
            
            views.append(newView);
            
            let newViewController : UIViewController = UIViewController();
            newViewController.title = String(format: "View %d", arguments: [i]);
            newViewController.view  = newView;
            
            let newNavC : UINavigationController = UINavigationController(rootViewController: newViewController);

            self.addMiscViewLabel(newView, vc: newViewController);
            self.addTabImage(i, navController: newNavC);
            
            navs.append(newNavC);
        }

        let main_tab : TabBar = TabBar();
        
        let tbc : UITabBarController = main_tab.getUITabBarController();
        
        tbc.viewControllers = navs;

        self.window?.rootViewController = tbc;
        
        self.window?.makeKeyAndVisible();

        return true;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        init()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func setMiscBackgroundColor(_ view : UIView) {
        
         let redC   : CGFloat = CGFloat(arc4random_uniform(255))/CGFloat(255);
         let greenC : CGFloat = CGFloat(arc4random_uniform(255))/CGFloat(255);
         let blueC  : CGFloat = CGFloat(arc4random_uniform(255))/CGFloat(255);
         
         view.backgroundColor = UIColor(red: redC, green: greenC, blue: blueC, alpha: 1);

        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        init()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func addMiscViewLabel(_ view : UIView, vc :UIViewController) {
        
        let l : UILabel = UILabel(frame: UIScreen.main.bounds);
        l.text = "The subViews of tab '\(vc.title!)' will go here";
        l.textAlignment = .center;
 
        view.addSubview(l);

        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        init()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    //todo - load image based on index!
    func addTabImage(_ index : Int, navController : UINavigationController) {
        
        var unselected : UIImage = UIImage(named: "Triangle-Right")!;
        var selected   : UIImage = UIImage(named: "Fast-Backward")!;
        
        unselected = unselected.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        selected   =   selected.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        
        navController.tabBarItem.image         = unselected;
        navController.tabBarItem.selectedImage = selected;
        
        return;
    }

    
    func applicationWillResignActive(_ application: UIApplication)    { return; }
    func applicationDidEnterBackground(_ application: UIApplication)  { return; }
    func applicationWillEnterForeground(_ application: UIApplication) { return; }
    func applicationDidBecomeActive(_ application: UIApplication)     { return; }
    func applicationWillTerminate(_ application: UIApplication)       { return; }
}

