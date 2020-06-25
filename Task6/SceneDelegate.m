#import "SceneDelegate.h"
#import "T6ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
//    self.tabBarController = [[UITabBarController alloc] init];
//    ViewController2 * vc1 = [[ViewController2 alloc] init];
//    ViewController3 * vc2 = [[ViewController3 alloc] init];
//    T6ViewController *vc3 = [[T6ViewController alloc] init];
//    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:vc3];
//    NSArray* controllers = [NSArray arrayWithObjects:vc1, vc2, navController, nil];
//    tabBarController.viewControllers = controllers;
//    window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
//    window.rootViewController = tabBarController;
//    [window makeKeyAndVisible];
   
    UIWindow *window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
    T6ViewController *rootVC = [[T6ViewController alloc] initWithNibName:@"T6ViewController" bundle:nil];
    
    UINavigationController *firstVC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    window.rootViewController = firstVC;
    self.window = window;
    [self.window makeKeyAndVisible];
   
   
    
   
    
  //  UITabBarController *tbc = [[UITabBarController alloc] init];
  //  T6ViewController *vc1 = [[T6ViewController alloc] init];
  //  ViewController3 *vc2 = [[ViewController3 alloc] init];
   
   // [rootVC.tabBarItem setTitle: @"Tab1"];
    //[vc2.tabBarItem setTitle: @"Tab2"];
    
  //  [tbc setViewControllers:[NSArray arrayWithObjects:rootVC, vc2, nil]];
    
   // UITabBarItem *customTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Tab1" image:[UIImage imageNamed:@"name"] tag:0];
  //  rootVC.tabBarItem = customTabBarItem;
    
    
    
   // tabBarController.viewControllers = @[firstVC];
    
    
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
