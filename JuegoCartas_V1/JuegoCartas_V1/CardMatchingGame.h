//
//  CardMatchingGame.h
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.
////  By: RETBOT

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Carta.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardMatchingGame : NSObject
-(instancetype)initWithCardCount:(NSUInteger)count
                       usingDeck:(Deck *)deck;
//  By: RETBOT
- (void) chooseCardAtIndex:(NSUInteger)index;
- (Carta *)cartdAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;
@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
