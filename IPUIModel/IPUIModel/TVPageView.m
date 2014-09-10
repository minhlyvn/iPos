//
//  TVPageView.m
//  IPUIModel
//
//  Created by cscv on 9/5/14.
//  Copyright (c) 2014 cscv. All rights reserved.
//

#import "TVPageView.h"

@implementation TVPageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //self.arrTextFields = [NSArray new];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (IBAction)buttonClick:(id)sender
{
    NSLog(@"count=%d",[self.arrTextFields count]);
    
    NSString* text = @"";
    for (UITextField* arr in self.arrTextFields)
    {
        text = [text stringByAppendingString:arr.text];
    }

    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Test" message:text delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];
    
}

@end
