//
//  FrameworkManager.m
//  DownloadAndPrint
//
//  Created by Acan on 2019/3/19.
//  Copyright © 2019 weiphone. All rights reserved.
//

#import "FrameworkManager.h"

@implementation FrameworkManager
- (UIView *)getViewFromXib {
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"DownloadAndPrint" ofType:@"framework"]];
    
    return [[bundle loadNibNamed:@"Test" owner:self options:nil] firstObject];
}
@end
