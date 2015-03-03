//
//  ViewController.h
//  AudioSampler
//
//  Created by Ryo Eguchi on 2015/03/04.
//  Copyright (c) 2015年 Ryo Eguchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

//ここに書くのがミソ。AppDelegateではない。
AVAudioPlayer *audio;


@interface ViewController : UIViewController
{
    IBOutlet UILabel *label;
}

-(IBAction)start:(id)sender;
-(IBAction)stop:(id)sender;
-(void)hantei;


@end

