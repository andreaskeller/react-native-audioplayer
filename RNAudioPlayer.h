#import "RCTBridgeModule.h"
#import <AVFoundation/AVFoundation.h>

@interface RNAudioPlayer : NSObject <RCTBridgeModule>

@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) AVPlayer *audioPlayerURL;

@end
