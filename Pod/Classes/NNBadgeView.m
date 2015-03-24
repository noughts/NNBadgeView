//
//  NNBadgeView.m
//  Pods
//
//  Created by noughts on 2015/03/24.
//
//

#import "NNBadgeView.h"

@implementation NNBadgeView


-(void)awakeFromNib{
	[super awakeFromNib];
	
	self.userInteractionEnabled = NO;
	self.contentEdgeInsets = UIEdgeInsetsMake(1, 4, 1, 4);
	
	self.layer.cornerRadius = self.bounds.size.height / 2.0;
}


-(void)setBadge:(NSUInteger)badge{
	_badge = badge;
	[self updateTitleAnimated:NO];
}


-(void)setBadge:(NSUInteger)badge animated:(BOOL)animated{
	_badge = badge;
	[self updateTitleAnimated:animated];
}



-(void)updateTitleAnimated:(BOOL)animated{
	if( _badge == 0 ){
		self.hidden = YES;
		return;
	}
	self.hidden = NO;
	NSString* title = [NSString stringWithFormat:@"%@", @(_badge)];
	[self setTitle:title forState:UIControlStateNormal];
}





@end
