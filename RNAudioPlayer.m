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

RCT_EXPORT_METHOD(playFromURL:(NSString *)url)
{
    NSURL *soundURL=[NSURL URLWithString:url];
	AVPlayerItem *playerItem = [AVPlayerItem playerItemWithURL: soundURL];
	self.audioPlayerURL = [AVPlayer playerWithPlayerItem:playerItem];
	[self.audioPlayerURL play];
	self.audioPlayerURL.actionAtItemEnd = AVPlayerActionAtItemEndNone;
}

@end
