//
//  HelloWorld2.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld2.h"


@implementation HelloWorld2

// ラベルの生成
- (UILabel*) makeLabel:(CGPoint) pos text:(NSString*)text font:(UIFont*) font {
	//位置情報の取得
	CGSize size = [text sizeWithFont:font];
	CGRect rect = CGRectMake(pos.x, pos.y, size.width, size.height);
	
	//ラベルの生成
	UILabel* label = [[[UILabel alloc] init] autorelease];
	[label setFrame:rect];
	[label setText:text];
	[label setFont:font];
	[label setTextColor:[UIColor blackColor]];
	[label setTextAlignment:UITextAlignmentLeft];
	[label setNumberOfLines:0];
	[label setLineBreakMode:UILineBreakModeWordWrap];
	[label setBackgroundColor:[UIColor clearColor]];
	
	return label;
	
}

//イメージビューの生成
- (UIImageView*) makeImageView:(CGRect) rect image:(UIImage*)image {
	UIImageView* imageview = [[[UIImageView alloc] init] autorelease];
	[imageview setFrame:rect];
	[imageview setImage:image];
	return imageview;
}

// アラートの表示
- (void) showAlert: (NSString*)title text:(NSString*) text{
	UIAlertView* alert = [[[ UIAlertView alloc]
						   initWithTitle:title message:text
						   delegate:nil  //デリゲートはない。
						   cancelButtonTitle:@"YES" otherButtonTitles:@"NO", nil]
						  autorelease];
	[alert show];
}
// テキストボタンの生成
- (UIButton*) makeButton:(CGRect)rect text:(NSString*)text tag:(int)tag {
	//テキストボタンの生成
	UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[button setFrame:rect];
	[button setTitle:text forState:UIControlStateNormal];
	[button setTag:tag];
	
	//イベントリスナーを指定
	[button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
	return button;
}

#define BTN_ALERT 0
#define BTN_SHEET 2
// ボタンクリック時に呼ばれる
- (IBAction) clickButton:(UIButton*)sender {
	if(sender.tag==BTN_ALERT) {
		//アラート表示
		[self showAlert:@"" text:@"ぼたんをおした"];
	}else if(sender.tag==BTN_SHEET) {
		//アクションシート表示
		UIActionSheet* sheet = [[[UIActionSheet alloc]
								 initWithTitle:@"アクションシート表示"
								 delegate:self //デリゲートは自分。このクラスで定義したactionSheetデリゲートが呼ばれる。
								 cancelButtonTitle:@"キャンセル"
								 destructiveButtonTitle:@"ほげ"
								 otherButtonTitles:@"ふが" , @"ぴよ", nil ]
								autorelease];
		[sheet showInView:self.view];
	}
}

//テキストフィールドの生成
- (UITextField*) makeTextField:(CGRect) rect text:(NSString*) text {
	UITextField* textField = [[[UITextField alloc] init] autorelease];
	[textField setFrame:rect];
	[textField setText:text];
	[textField setBackgroundColor:[UIColor whiteColor]];
	[textField setBorderStyle:UITextBorderStyleRoundedRect];
	[textField setKeyboardAppearance:UIKeyboardAppearanceDefault];
	[textField setKeyboardType:UIKeyboardTypeDefault];
	[textField setReturnKeyType:UIReturnKeyDone];
	
	return textField;
}

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

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	// ラベルの生成・配置
	UILabel* label = [self makeLabel:CGPointMake(0, 0) text:@"This is Label てすと" font:[UIFont systemFontOfSize:16]];
	[self.view addSubview:label];
	
	// イメージビューの生成・配置
	UIImageView* imageView = [self makeImageView:CGRectMake(0, 50, 80, 80) image:[UIImage imageNamed:@"img.jpg"]];
	[self.view addSubview:imageView];
	
	// アラートを表示するボタン生成
	UIButton* buttonAlart = [self makeButton:CGRectMake(0, 150, 200, 40) text:@"アラート表示" tag:BTN_ALERT];
	// イベントリスナーを指定
	[buttonAlart addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
	//ボタン配置
	[self.view addSubview:buttonAlart];
	
	// アクションシートを表示するボタン
	UIButton* buttonActionSheet = [self makeButton:CGRectMake(0, 200, 200, 40) text:@"アクションシート表示" tag:BTN_SHEET];
	[self.view addSubview:buttonActionSheet];
	
	// テキストフィールドの作成
	UITextField* textField = [[self makeTextField:CGRectMake(30, 0, 300, 32) text:@""] retain];
	[textField setDelegate:self];
	[self.view addSubview:textField];
}

// アラートビューデリゲートのプロトコルを実装。ボタン表示後に呼ばれる。が、alertViewの定義時にデリゲートをnilにしているので呼ばれない。
- (void) alertView:(UIAlertView*)alertView didDismissWithButtonIndex:(NSInteger)index {
	[self showAlert:@"よばれないよ！" text:[NSString stringWithFormat:@"[%d]を押した", index]];
}

// アクションシートデリゲートのプロトコルを実装。
- (void) actionSheet:(UIActionSheet*)actionSheet didDismissWithButtonIndex:(NSInteger)index {
	[self showAlert:@"title" text:[NSString stringWithFormat:@"[%d]番目を押した", index+1]];
}

// テキストフィールドデリゲートのプロトコルを実装
// リターン押下時
- (BOOL) textFieldShouldReturn:(UITextField *)sender {
	[sender resignFirstResponder]; //ソフトウェアキーボード非表示
	return YES;
}


// 回転を有効にする。
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}


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
    [super dealloc];
}


@end
