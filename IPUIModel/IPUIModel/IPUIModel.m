//
//  IPUIModel.m
//  IPUIModel
//
//  Created by cscv on 9/5/14.
//  Copyright (c) 2014 cscv. All rights reserved.
//

#import "IPUIModel.h"
#import "TVPageView.h"

@implementation IPUIModel

- (void)launchPage:(UIView*)view
{
    //NSBundle* myBundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"IPUIModelBundle" withExtension:@"bundle"]];

//    NSString* bundlePath = [[NSBundle mainBundle] pathForResource:@"IPUIModelBundle" ofType:@"bundle"];
    NSString* bundlePath = [NSString stringWithFormat:@"%@/IPUIModelBundle.bundle",[self getDocumentDir]];
    NSBundle* bundle = [NSBundle bundleWithPath:bundlePath];
    
    NSArray* arr = [bundle loadNibNamed:@"TVPageView" owner:self options:nil];

    TVPageView* pageView =  [arr objectAtIndex:0];

    [view addSubview:pageView];
}

- (NSString*)getDocumentDir
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

@end
