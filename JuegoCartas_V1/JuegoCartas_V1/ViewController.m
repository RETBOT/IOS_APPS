//
//  ViewController.m
//  JuegoCartas_V1
//
//  Created by Guest User on 12/10/22.
//

#import "ViewController.h"
#import "Deck.h"
#import "JuegoCartaDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnCartas;
@end

@implementation ViewController
-(CardMatchingGame *)game{
    if(!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.btnCartas count]                                               usingDeck:[self createDeck]];
    return _game;
}

-(Deck *)deck{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck{
    return [[JuegoCartaDeck alloc] init];
}

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips : %d",self.flipCount];
    
    NSLog(@"FlipCount cambio a : %d", flipCount);
}

- (IBAction)btnCarta:(UIButton *)sender {
    /*
    if([sender.currentTitle length]){
        [sender setBackgroundImage:
         [UIImage imageNamed:@"Back-card-itl_tree"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Carta *randomCard = [self.deck drawRandomCard];
        if (randomCard) {
            [sender setBackgroundImage:
             [UIImage imageNamed:@"Blank-card-hd"] forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents  forState:UIControlStateNormal];
        }
    }
     */
    NSUInteger btnElegidoIndice = [self.btnCartas indexOfObject:sender];
    [self.game chooseCardAtIndex:btnElegidoIndice];
    [self updateUI];
     
    //self.flipCount++;
}

-(void) updateUI{
    for (UIButton *btnCarta in self.btnCartas) {
        NSUInteger btnCartaIndice = [self.btnCartas indexOfObject:btnCarta];
        Carta *card = [self.game cartdAtIndex:btnCartaIndice];
        [btnCarta setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [btnCarta setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        btnCarta.enabled = !card.isMatched;
        if(self.game.score > 0 )
            self.flipsLabel.text = [NSString stringWithFormat:@"Score : %ld",(long)self.game.score];
    }
}

-(NSString *) titleForCard:(Carta *)card{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundImageForCard:(Carta *)card{
    return [UIImage imageNamed:card.isChosen ? @"Blank-card-hd" : @"Back-card-itl_tree"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
@end
