//
//  HelloWorld2.h
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HelloWorld2 : UIViewController 
						<UIAlertViewDelegate, // アラートを使うためのプロトコル実装
						UIActionSheetDelegate, // アクションシートを使うためのプロトコル実装
						UITextFieldDelegate> 
{
	UITextField* _textfield;

}

@end
