//
//  FrameworkManager.h
//  DownloadAndPrint
//
//  Created by Acan on 2019/3/19.
//  Copyright © 2019 weiphone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface FrameworkManager : NSObject
@property (strong, nonatomic) UIImage *image;
- (UIView *)getViewFromXib;
- (void)getImageUseAFN;
@end

NS_ASSUME_NONNULL_END
