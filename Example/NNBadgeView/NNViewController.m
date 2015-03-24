//
//  NNViewController.m
//  NNBadgeView
//
//  Created by koichi yamamoto on 03/24/2015.
//  Copyright (c) 2014 koichi yamamoto. All rights reserved.
//

#import "NNViewController.h"
#import <NNBadgeView.h>

@implementation NNViewController{
	__weak IBOutlet NNBadgeView* _badgeView;
}

-(IBAction)hoge:(UIStepper*)sender{
	_badgeView.badge = sender.value;
}



@end
