//
//  ViewController.m
//  DownloadAndPrintDemo
//
//  Created by Acan on 2019/3/19.
//  Copyright © 2019 weiphone. All rights reserved.
//

#import "ViewController.h"
#import <DownloadAndPrint/DownloadAndPrint.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Print *printObj = [[Print alloc] init];
    [printObj print];
    [printObj log];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    DownloadImage *downloadObj = [[DownloadImage alloc] init];
    self.imageView.image = [downloadObj downloadImage];
}


@end