//
//  helloWorld3.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "helloWorld3.h"


@implementation helloWorld3

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

@synthesize canvas;
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

	canvas = [[UIImageView alloc] init];
	[canvas setFrame:CGRectMake(0, 20, 320, 460)];
	
	[self.view addSubview:canvas];
}

// ファーストアペンダーにするのに必要？
- (BOOL)canBecomeFirstResponder {
    return YES;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}

// シェイクを検知して画像を削除。
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent*)event {
	canvas.image = nil;
}

// タッチ開始イベントの処理
- (void) touchesBegan:(NSSet*) touches withEvent:(UIEvent*) event {
	
    UITouch *touch = [touches anyObject];
    touchPoint = [touch locationInView:canvas];
	
}

- (void) touchesMoved:(NSSet*) touches withEvent:(UIEvent*) event {
    UITouch *touch = [touches anyObject]; 
    CGPoint currentPoint = [touch locationInView:canvas];
    
    UIGraphicsBeginImageContext(canvas.frame.size);
    
    [canvas.image drawInRect:CGRectMake(0, 0, canvas.frame.size.width, canvas.frame.size.height)];
	
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 5.0);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 0.0, 1.0);
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), touchPoint.x, touchPoint.y);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
	
    canvas.image = UIGraphicsGetImageFromCurrentImageContext();
	
    UIGraphicsEndImageContext();
		
    touchPoint = currentPoint;
}

- (void) touchesEnded:(NSSet*) touches withEvent:(UIEvent*) event {
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[canvas release];
    [super dealloc];
}


@end
