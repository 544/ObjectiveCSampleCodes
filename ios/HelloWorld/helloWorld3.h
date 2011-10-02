//
//  helloWorld3.h
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface helloWorld3 : UIViewController {

	// UI
	UIImageView *canvas;

	//Properties
	CGPoint touchPoint;

}

@property (nonatomic, retain) IBOutlet UIImageView *canvas;
//@property (nonatomic, assign) CGPoint touchPoint;

@end
