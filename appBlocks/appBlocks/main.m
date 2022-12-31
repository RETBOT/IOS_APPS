//
//  main.m
//  appBlocks
//
//  Created by Guest User on 06/10/22.
//

#import <Foundation/Foundation.h>
typedef void (^CompletionBlock)();
@interface SampleClass:NSObject
- (void)performActionWithCompletion:(CompletionBlock)completionBlock;
@end

@implementation SampleClass

- (void)performActionWithCompletion:(CompletionBlock)completionBlock {
   NSLog(@"Action Performed");
   completionBlock();
}

@end
int main(int argc, const char * argv[]) {
       SampleClass *sampleClass = [[SampleClass alloc]init];
       [sampleClass performActionWithCompletion:^{
          NSLog(@"Completion is called to intimate action is performed.");
       }];
       return 0;
}
