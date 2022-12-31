//
//  Deck.m
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.
//

#import "Deck.h"

@implementation Deck
-(NSMutableArray *)cartas {
    if (!_cartas) _cartas = [[NSMutableArray alloc] init];
    return _cartas;
}

-(void) addCard:(Carta *)card atTop:(BOOL)atTop{
    if(atTop){
        [self.cartas insertObject:card atIndex:0];
    } else {
        [self.cartas addObject:card];
    }
}
-(void) addCard:(Carta *)card{
    [self addCard:card atTop:NO];
}

-(Carta *)drawRandomCard{
    Carta *randomCard= nil;
    if ([self.cartas count]) {
        unsigned index = arc4random() % [self.cartas count];
        randomCard = self.cartas[index];
        [self.cartas removeObjectAtIndex:index];
    }
    return randomCard;
}
@end
