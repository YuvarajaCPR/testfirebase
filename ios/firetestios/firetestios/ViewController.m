//
//  ViewController.m
//  firetestios
//
//  Created by Yuvaraja CPR on 12/11/21.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "firetestios-Swift.h"

@import Flutter;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)flutterBtnClicket:(id)sender {
    NSLog(@"Button Click");
    
    
//    FlutterEngine *flutterEngine = [[FlutterEngine alloc] init];
    // FlutterDefaultDartEntrypoint is the same as nil, which will run main().
//    [flutterEngine runWithEntrypoint:@"secondary"
//                        initialRoute:@"/route_calling"];
//    [flutterEngine run];
    
    SingleFlutterViewController *singleViewController = [[SingleFlutterViewController alloc] initWithEntrypoint:@"secondary"];
    
    [self presentViewController:singleViewController animated:YES completion:nil];
    
    
    
    
    
    
    
    
    
//    FlutterEngine *flutterEngine =
//            ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
//
//    //FlutterEngine *flutterEngine = [[FlutterEngine alloc] init];
//    [flutterEngine runWithEntrypoint:@"secondary" libraryURI:@"page_one.dart"];
//    [self presentViewController:flutterViewController animated:YES completion:nil];
    //[flutterEngine run];


//    [[flutterEngine navigationChannel] invokeMethod:@"setInitialRoute"
//                                          arguments:@"/route_calling"];
    //[flutterEngine run];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    [flutterEngine runWithEntrypoint:FlutterDefaultDartEntrypoint
//                        initialRoute:@"/route_calling"];
    
//    [flutterEngine runWithEntrypoint:@"myOtherEntrypoint" libraryURI:@"other_file.dart"];

    
    
//        FlutterViewController *flutterViewController =
//            [[FlutterViewController alloc] initWithProject:nil
//                                                         initialRoute:@"/route_calling" nibName:nil  bundle:nil ];
//        //[flutterViewController setInitialRoute:@"/route_calling"];
//
//        flutterViewController.modalPresentationStyle = UIModalPresentationCustom;
//
//        [self presentViewController:flutterViewController animated:YES completion:nil];
    
    
    
//    FlutterViewController* flutterViewController =
//          [[FlutterViewController alloc] initWithProject:nil
//                                            initialRoute:@"/route_calling"
//                                                 nibName:nil
//                                                  bundle:nil
//                                                ];
//    flutterViewController.modalPresentationStyle = UIModalPresentationCustom;
//    [self presentViewController:flutterViewController animated:YES completion:nil];
}



@end
