#import "RCTBridgeModule.h"
#import "RCTEventDispatcher.h"
#import <AVFoundation/AVFoundation.h>

@interface RNAudioPlayer : NSObject <RCTBridgeModule>

@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

@end
