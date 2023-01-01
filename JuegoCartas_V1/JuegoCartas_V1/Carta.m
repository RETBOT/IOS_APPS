//
//  Carta.m
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.//  By: RETBOT
//

#import "Carta.h"

@implementation Carta

-(int)match:(NSArray *)otrasCartas{
    int score = 0;
    
    for (Carta *card in otrasCartas) {
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
}
@end
//  By: RETBOT
