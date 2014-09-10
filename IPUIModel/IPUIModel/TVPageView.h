//
//  TVPageView.h
//  IPUIModel
//
//  Created by cscv on 9/5/14.
//  Copyright (c) 2014 cscv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVPageView : UIView

@property (nonatomic,strong) IBOutletCollection(UITextField) NSArray* arrTextFields;
- (IBAction)buttonClick:(id)sender;

@end
