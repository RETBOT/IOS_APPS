//
//  GUIHandler.m
//  appGraficosStoryBoardVistas
//
//  Created by Usuario invitado on 27/10/22.
//

#import "GUIHandler.h"

@implementation GUIHandler


- (IBAction)btnBorrar:(NSButton *)sender {
    [vista1 removeFromSuperview];
}

- (IBAction)btnDibujar:(NSButton *)sender {
    vista1 = [[Vista1 alloc] initWithFrame:NSMakeRect(0, 0, 200, 200)];
    
    [viewController.view addSubview:vista1];
}
@end
