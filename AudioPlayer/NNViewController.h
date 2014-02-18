//
//  NNViewController.h
//  AudioPlayer
//
//  Created by Nate Norberg on 2/16/14.
//  Copyright (c) 2014 Nate Norberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface NNViewController : UIViewController {
    AVAudioPlayer *audioPlayer;
}
@property (weak, nonatomic) IBOutlet UIButton *playButtonView;
@property (weak, nonatomic) IBOutlet UISlider *volumeFader;
@property (assign) float volume;

- (IBAction)volumeChanged:(id)sender;
- (IBAction)playSound:(UIButton *)sender;

@end
