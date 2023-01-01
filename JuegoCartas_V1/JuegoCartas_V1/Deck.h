//
//  Deck.h
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.
////  By: RETBOT

#import <Foundation/Foundation.h>
#import "Carta.h"
NS_ASSUME_NONNULL_BEGIN

@interface Deck : NSObject
@property (strong, nonatomic) NSMutableArray *cartas;

-(void) addCard:(Carta *)card atTop:(BOOL)atTop;
-(void) addCard:(Carta *)card;

-(Carta *)drawRandomCard;


@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
