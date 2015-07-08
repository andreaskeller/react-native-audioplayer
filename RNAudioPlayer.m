#import "RNAudioPlayer.h"

@implementation RNAudioPlayer

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(play:(NSString *)fileName)
{
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setCategory: AVAudioSessionCategoryPlayback error: nil];
    [session setActive: YES error: nil];
    
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:[[fileName lastPathComponent] stringByDeletingPathExtension]
                                             withExtension:[fileName pathExtension]];
    
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    
    [self.audioPlayer play];
}

@end
