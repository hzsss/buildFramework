//
//  DownloadImage.m
//  DownloadAndPrint
//
//  Created by Acan on 2019/3/18.
//  Copyright © 2019 weiphone. All rights reserved.
//

#import "DownloadImage.h"

@implementation DownloadImage

- (UIImage *)downloadImage {
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"DownloadAndPrint" ofType:@"framework"]];
    
    NSString* imagesPath = [bundle.resourcePath stringByAppendingPathComponent:@"images"];

    NSBundle* imageBundle = [NSBundle bundleWithPath:imagesPath];
    
    return  [UIImage imageNamed:@"test" inBundle:imageBundle compatibleWithTraitCollection:nil];
}

@end
