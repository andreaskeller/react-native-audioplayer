#import "RNAudioPlayer.h"

@implementation RNAudioPlayer

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(play:(NSString *)fileName)
{
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback
                               withOptions:AVAudioSessionCategoryOptionDuckOthers
                               error:nil];
    [[AVAudioSession sharedInstance] setActive:YES error:nil];
    
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:[[fileName lastPathComponent] stringByDeletingPathExtension]
                                             withExtension:[fileName pathExtension]];
    
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    
    [self.audioPlayer play];
}

@end
