//
//  AppDelegate.m
//  firetestios
//
//  Created by Yuvaraja CPR on 12/11/21.
//
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>
#import "AppDelegate.h"

@import Firebase;

@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.flutterEngineGroup = [[FlutterEngineGroup alloc] initWithName:@"multiple-flutters" project:nil];

    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
     // Runs the default Dart entrypoint with a default Flutter route.
     [self.flutterEngine run];
    [FIRApp configure];
     // Used to connect plugins (only if you have plugins with iOS platform code).
     [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
        return TRUE;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
