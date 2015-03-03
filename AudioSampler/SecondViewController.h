//
//  SecondViewController.h
//  AudioSampler
//
//  Created by Ryo Eguchi on 2015/03/04.
//  Copyright (c) 2015年 Ryo Eguchi. All rights reserved.
//

#import <UIKit/UIKit.h>
//ここにViewControllerを読み込むのがミソ。
#import "ViewController.h"

@interface SecondViewController : UIViewController

-(IBAction)start:(id)sender;
-(IBAction)stop:(id)sender;
@end
