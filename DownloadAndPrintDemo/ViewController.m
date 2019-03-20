//
//  ViewController.m
//  DownloadAndPrintDemo
//
//  Created by Acan on 2019/3/19.
//  Copyright © 2019 weiphone. All rights reserved.
//

#import "ViewController.h"
#import <DownloadAndPrint/DownloadAndPrint.h>
#import "AFNetworking.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) UIView *xibView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Print *printObj = [[Print alloc] init];
    [printObj print];
    [printObj log];
    
    [self test];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    DownloadImage *downloadObj = [[DownloadImage alloc] init];
    self.imageView.image = [downloadObj downloadImage];
    
    FrameworkManager *manager = [[FrameworkManager alloc] init];
    self.xibView = [manager getViewFromXib];
    [self.view addSubview:self.xibView];
    
    [manager getImageUseAFN];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.xibView.frame = CGRectMake(0, 0, 100, 100);
}

- (void)test {
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
