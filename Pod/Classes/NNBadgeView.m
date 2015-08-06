/*
 
 HOW TO USE
 --------
 1. UIButtonをstoryboardに配置します。
 2. 任意の背景色とフォントを設定します。
 3. 文字サイズに合わせて、AutoLayoutで高さ制約を追加します。
 
 
 UILabelだとパディングがうまく効かないので、UIButtonを使います。
 数をアップデートするときにアニメーションさせたいならbuttonType=systemを、
 アニメーションさせたくないなら buttonType=custom を使いましょう。
 
 */

#import "NNBadgeView.h"
#import <Masonry.h>

@implementation NNBadgeView


-(void)awakeFromNib{
	[super awakeFromNib];
	
	/// 幅 >= 高さ の autoLayoutを設定して、文字数が少ない時にも正円を保つように
	[self mas_makeConstraints:^(MASConstraintMaker *make) {
		make.width.greaterThanOrEqualTo( self.mas_height );
	}];
	
	self.userInteractionEnabled = NO;
	self.contentEdgeInsets = UIEdgeInsetsMake(0, 4, 0, 4);
	
	self.layer.cornerRadius = self.bounds.size.height / 2.0;
}


-(void)setBadge:(NSUInteger)badge{
	_badge = badge;
	[self updateTitle];
}



-(void)updateTitle{
	if( _badge == 0 ){
		self.hidden = YES;
		return;
	}
	self.hidden = NO;
	NSString* title = [NSString stringWithFormat:@"%@", @(_badge)];
	[self setTitle:title forState:UIControlStateNormal];
}





@end
