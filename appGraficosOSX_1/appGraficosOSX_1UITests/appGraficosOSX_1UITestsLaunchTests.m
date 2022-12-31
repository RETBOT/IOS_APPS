//
//  appGraficosOSX_1UITestsLaunchTests.m
//  appGraficosOSX_1UITests
//
//  Created by Usuario invitado on 17/10/22.
//

#import <XCTest/XCTest.h>

@interface appGraficosOSX_1UITestsLaunchTests : XCTestCase

@end

@implementation appGraficosOSX_1UITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
