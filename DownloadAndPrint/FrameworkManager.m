//
//  FrameworkManager.m
//  DownloadAndPrint
//
//  Created by Acan on 2019/3/19.
//  Copyright © 2019 weiphone. All rights reserved.
//

#import "FrameworkManager.h"
#import "AFNetworking.h"

@implementation FrameworkManager
- (UIView *)getViewFromXib {
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"DownloadAndPrint" ofType:@"framework"]];
    
    return [[bundle loadNibNamed:@"Test" owner:self options:nil] firstObject];
}

- (void)getImageUseAFN {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *url = [NSURL URLWithString:@"https://upload-images.jianshu.io/upload_images/6365912-7bca92ed1c76841e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSessionDownloadTask *task = [manager downloadTaskWithRequest:request progress:nil destination:nil completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        if (!error) {
            NSLog(@"response:%@", response);
            NSLog(@"filePath:%@", filePath);
        } else {
            NSLog(@"下载失败");
        }
    }];
    [task resume];
}
@end
