//
//  JuegoCartaDeck.m
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.
//

#import "JuegoCartaDeck.h"

@implementation JuegoCartaDeck

-(instancetype) init {
    self = [super init];
    if (self) {
        for (NSString *suit in [JuegoCarta validSuits]) {
            for(NSUInteger rank = 1; rank <= [JuegoCarta maxRank]; rank++){
                JuegoCarta *card = [[JuegoCarta alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}
@end
