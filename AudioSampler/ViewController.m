//
//  ViewController.m
//  AudioSampler
//
//  Created by Ryo Eguchi on 2015/03/04.
//  Copyright (c) 2015年 Ryo Eguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"超特急ライン" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)start:(id)sender{
    [audio play];
    [self hantei];
    
}
-(IBAction)stop:(id)sender{
    [audio pause];
    [self hantei];
    
}

-(void)hantei{
    if(!audio.isPlaying){
        //再生していないとき
        label.text = @"停止中";
    }else{
        //再生しているとき
        label.text = @"再生中";
    }
}
@end
