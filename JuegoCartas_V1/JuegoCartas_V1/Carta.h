//
//  Carta.h
//  JuegoCartas_V1
//
//  Created by Roberto Esquivel Troncoso on 23/10/22.
////  By: RETBOT

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//  By: RETBOT
@interface Carta : NSObject
@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end

NS_ASSUME_NONNULL_END
//  By: RETBOT
