//
//  main.m
//  ClassyDemo
//
//  Created by wang hui on 15/5/19.
//  Copyright (c) 2015年 Aldelo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Classy.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
#if TARGET_IPHONE_SIMULATOR
        // get absolute file path of stylesheet, using relative path
        NSString *absoluteFilePath = CASAbsoluteFilePath(@"StyleSheet/myStyles.cas");
        [CASStyler defaultStyler].watchFilePath = absoluteFilePath;
#endif
        
        // Move files to caches directory for referencing in stylesheet
        NSString *caches = [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches"];
        NSString *path = [caches stringByAppendingPathComponent:@"Ball.png"];
        [[NSFileManager defaultManager] createDirectoryAtPath:caches withIntermediateDirectories:YES attributes:nil error:nil];
        [[NSFileManager defaultManager] copyItemAtPath:[[NSBundle mainBundle] pathForResource:@"Ball" ofType:@"png"] toPath:path error:nil];
        
        
        [CASStyler defaultStyler].filePath = [[NSBundle mainBundle] pathForResource:@"myStyles.cas" ofType:nil];
        
        NSError *error = nil;
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"myStyles.cas" ofType:nil];
        [[CASStyler defaultStyler] setFilePath:filePath error:&error];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
