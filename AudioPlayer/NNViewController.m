//
//  NNViewController.m
//  AudioPlayer
//
//  Created by Nate Norberg on 2/16/14.
//  Copyright (c) 2014 Nate Norberg. All rights reserved.
//

#import "NNViewController.h"

@interface NNViewController ()

@end

@implementation NNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _volume = 0.5;
    
    NSString *path = [NSString stringWithFormat:@"%@/synth_strings.aiff", [[NSBundle mainBundle] resourcePath]];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    audioPlayer.numberOfLoops = -1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)volumeChanged:(id)sender {
    UISlider *slider = (UISlider*)sender;
    
    [self setVolume:slider.value];
    audioPlayer.volume = _volume;
}

- (IBAction)playSound:(UIButton *)sender {
    if ([audioPlayer isPlaying]) {
        [audioPlayer stop];
        [[self playButtonView] setTitle:@"Play Audio" forState:UIControlStateNormal];
    }
    else {
        [audioPlayer play];
        [[self playButtonView] setTitle:@"Pause Audio" forState:UIControlStateNormal];
    }
}
@end
