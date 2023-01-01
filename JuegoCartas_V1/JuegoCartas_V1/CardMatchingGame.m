//
//  CardMatchingGame.m
//  JuegoCartas_V1
////  By: RETBOT
//  Created by Roberto Esquivel Troncoso on 23/10/22.
//

#import "CardMatchingGame.h"
@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation CardMatchingGame
- (NSMutableArray *)cards{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}
-(instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck{
    
    self = [super init];
    if (self) {
        for(int i=0; i<count; i++){
            Carta *card = [deck drawRandomCard];
            if (card) {
                [self.cards addObject:card];
            } else {
                self = nil;
                break;
            }
        }
    }//  By: RETBOT
    return self;
}

static const int MISMATCH_PENALTY = 2;
static const int MATCH_BONUS = 6;//4;
static const int COST_TO_CHOOSE = 1;

-(Carta *)cartdAtIndex:(NSUInteger)index{
    return (index<[self.cards count]) ? self.cards[index] : nil;
}
- (void)chooseCardAtIndex:(NSUInteger)index{
    
    Carta *card = [self cartdAtIndex:index];
    
    if(!card.isMatched){
        if(card.isChosen){
            card.chosen = NO;
        } else {
        for (Carta *otraCarta in self.cards) {
            if(otraCarta.isChosen && !otraCarta.isMatched){
                int matchScore = [card match:@[otraCarta]];
                if(matchScore){
                    self.score += matchScore * MATCH_BONUS;
                    otraCarta.matched = YES;
                    card.matched = YES;
                }else{
                    //self.score -= MISMATCH_PENALTY;
                    otraCarta.chosen = NO;
                }
                break; // puede seleccionar 2 cartas otra vez
            }
        }
        self.score -= COST_TO_CHOOSE;
        card.chosen = YES;
    }
  }
}//  By: RETBOT
@end
