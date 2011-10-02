//
//  HelloWorld.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/06.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld.h"

// HelloWorldの実装
@implementation HelloWorld

//初期化
- (id)initWithFrame:(CGRect)frame {
	if(self=[super initWithFrame:frame] ) {
		self.backgroundColor = [UIColor whiteColor];
		
		//イメージ読み込み
		_image = [[UIImage imageNamed:@"img.jpg"] retain];
	
		// タッチオブジェクト群
	_touches = [[NSMutableArray array] retain];
	self.multipleTouchEnabled = YES;
	
	}
		return self;
}

//メモリ解放
- (void) dealloc {
	// イメージ解放
	[_image release];
	// タッチ情報の解放
	[_touches release];
	
	[super dealloc];
}

- (void) drawImage {
	// 画像描画
	  [_image drawAtPoint:CGPointMake(0, 0)];
	// 画像縮小
	[_image drawInRect:CGRectMake(50, 100, _image.size.width/2, _image.size.height/2)];

}
//描画
- (void) drawRect:(CGRect)rect {

	// 画像表示
	[self drawImage];

	// HelloWorldを描画
	UIFont * font = [UIFont systemFontOfSize:16];	// fontを設定するためにUIFont型へのポインタを作成する。
	[@"HelloWorld!!!" drawAtPoint // 文字列に対してメッセージ
						:CGPointMake(0, 0)  // 第一引数は位置情報
						 withFont:font]; // 引数WithFontに上で作ったfontを渡す。
	
	// 変数を使ってみる。
	int num1 = 100;
	int num2 = 200;
	int sum;
	// 演算
	sum = num1 + num2;
	// 描画用文字列の生成
	NSString* text = [NSString stringWithFormat:@"%d + %d = %d",num1,num2,sum];
	// 描画
	[text drawAtPoint:CGPointMake(0,24) withFont:font];
					 
	//時刻を表示してみる。
	
	NSCalendar * 	calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar ];
	//日付コンポーネントの取得
	unsigned int unitFlag = NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit |
		 NSHourCalendarUnit | NSMinuteCalendarUnit;
	NSDateComponents *	comps = [calender components:unitFlag fromDate:[NSDate date]];
	int year = [comps year];
	int month = [comps month];
	int day = [comps day];
	NSString * textdate = [NSString stringWithFormat:@"%d %d %d",year,month,day];
	NSLog(textdate,0);
	
	[textdate drawAtPoint:CGPointMake(0, 48) withFont:font];
	// 日付コンポーネントの解放
	[calender release];
	
	//タッチ位置の取得
	for (int i=0; i < _touches.count;i++ ) {
		CGPoint	pos = [[_touches objectAtIndex:i] locationInView:self];
	NSString * str = [NSString stringWithFormat:@"pos( %d, %d )", (int) pos.x, (int)pos.y ];
	[str drawAtPoint:CGPointMake(150, 16*i) withFont:font];
	}
}

// タッチ開始イベントの処理
- (void) touchesBegan:(NSSet*) touches withEvent:(UIEvent*) event {
	NSArray * objects = [touches allObjects];
	for (int i=0; i < objects.count;i++) {
		[_touches addObject:[objects objectAtIndex:i]];
	}
	[self setNeedsDisplay];
}

- (void) touchesMoved:(NSSet*) touches withEvent:(UIEvent*) event {
	[self setNeedsDisplay];
}

- (void) touchesEnded:(NSSet*) touches withEvent:(UIEvent*) event {
	NSArray * objects = [touches allObjects];
	for (int i=0; i < objects.count;i++) {
	NSObject * obj = [objects objectAtIndex:i];
	if ([_touches containsObject:obj ]) {
		[_touches removeObject:obj];
		}
	}
[self setNeedsDisplay];
}


@end
