//
//  ViewController.m
//  appPickerView2Cols
//
//  Created by Roberto Esquivel Troncoso on 03/10/22.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController (){
    NSString *bandera;
    NSString *banderaSeleccionada;
    AVAudioPlayer *audioPlayer;
    NSInteger vidas;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _diccionarioPaises = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"Afganistan",    @"0",
                          @"Aland",         @"1",
                          @"Albania",       @"2",
                          @"Andorra",       @"3",
                          @"Angola",        @"4",
                          @"Arabia Saudita",@"5",
                          @"Argelia",       @"6",
                          @"Argentina",     @"7",
                          @"Armenia",       @"8",
                          @"Aruba",         @"9",
                          @"Australia",     @"10",
                          @"Austria",       @"11",
                          @"Azerbaiyan",    @"12",
                          @"Bahamas",       @"13",
                          @"Banglades",     @"14",
                          @"Barbados",      @"15",
                          @"Barein",        @"16",
                          @"Belgica",       @"17",
                          @"Belice",        @"18",
                          @"Benin",         @"19",
                          @"Bielorrusia",   @"20",
                          @"Birmania",      @"21",
                          @"Bolivia",       @"22",
                          @"Bonaire",       @"23",
                          @"Botsuana",      @"24",
                          @"Brasil",        @"25",
                          @"Brunei",        @"26",
                          @"Bulgaria",      @"27",
                          @"Burkina Faso",  @"28",
                          @"Burundi",       @"29",
                          @"Butan",         @"30",
                          @"Cabo Verde",    @"31",
                          @"Camboya",       @"32",
                          @"Camerun",       @"33",
                          @"Canada",        @"34",
                          @"Catar",         @"35",
                          @"Chad",          @"36",
                          @"Chile",         @"37",
                          @"China",         @"38",
                          @"Chipre",        @"39",
                          @"Cocos",         @"40",
                          @"Colombia",@"41",
                          @"Corea del Norte",@"42",
                          @"Corea del Sur", @"43",
                          @"Costa de Marfil",@"44",
                          @"Costa Rica",@"45",
                          @"Croacia",@"46",
                          @"Cuba",@"47",
                          @"Curazao",@"48",
                          @"Dinamarca", @"49",
                          @"Dominica",@"50",
                          @"Egipto",@"51",
                          @"Emiratos Arabes Unidos",@"52",
                          @"Eritrea",@"53",
                          @"Etiopia", @"54",
                          @"Escocia", @"55",
                          @"Eslovaquia",@"56",
                          @"Eslovenia",@"57",
                          @"España", @"58",
                          @"Estados Unidos",@"59",
                          @"Estonia",@"60",
                          @"Finlandia", @"61",
                          @"Francia",@"62",
                          @"Gales",@"63",
                          @"Gambia",@"64",
                          @"Gabon", @"65",
                          @"Georgia",@"66",
                          @"Ghana",@"67",
                          @"Gibraltar",@"68",
                          @"Gran Colombia",@"69",
                          @"Granada",@"70",
                          @"Grecia",@"71",
                          @"Groenlandia", @"72",
                          @"Guam",@"73",
                          @"Guatemala",@"74",
                          @"Guayna Francesa",@"75",
                          @"Guinea Ecuatorial",@"76",
                          @"Guinea-Bisau",@"77",
                          @"Guinea", @"78",
                          @"Guyana",@"79",
                          @"Haiti",@"80",
                          @"Honduras",@"81",
                          @"Hong Kong", @"82",
                          @"India",@"83",
                          @"Indonesia",@"84",
                          @"Inglaterra",@"85",
                          @"Irak",@"86",
                          @"Iran",@"87",
                          @"Irlanda",@"88",
                          @"Islandia", @"89",
                          @"Islas Malvinas",@"90",
                          @"Israel",@"91",
                          @"Italia", @"92",
                          @"Jamaica",@"93",
                          @"Japon",@"94",
                          @"Jersey",@"95",
                          @"Jordania", @"96",
                          @"Kenia",@"97",
                          @"Kosovo",@"98",
                          @"Lesoto",@"99",
                          @"Letonia", @"100",
                          @"Libano",@"101",
                          @"Liberia",@"102",
                          @"Libia", @"103",
                          @"Liechtenstein",@"104",
                          @"Lituania",@"105",
                          @"Luxemburgo", @"106",
                          @"Macao",@"107",
                          @"Madagascar",@"108",
                          @"Malasia", @"109",
                          @"Malaui",@"110",
                          @"Maldivas",@"111",
                          @"Malta",@"112",
                          @"Mali", @"113",
                          @"Marruecos",@"114",
                          @"Martinica",@"115",
                          @"Mauricio", @"116",
                          @"Mauritania",@"117",
                          @"Mayotte",@"118",
                          @"Mexico", @"119",
                          @"Moldavia",@"120",
                          @"Mongolia",@"121",
                          @"Montenegro", @"122",
                          @"Mozambique",@"123",
                          @"Namibia",@"124",
                          @"Nauru", @"125",
                          @"Nicaragua",@"126",
                          @"Niger",@"127",
                          @"Nigeria", @"128",
                          @"Noruega",@"129",
                          @"Nueva Zelanda",@"130",
                          @"Oman", @"131",
                          @"Paises Bajos",@"132",
                          @"Pakistan",@"133",
                          @"Palestina", @"134",
                          @"Panama",@"135",
                          @"Paraguay",@"136",
                          @"Peru",@"137",
                          @"Portugal",@"138",
                          @"Puerto Rico",@"139",
                          @"Reino Unido", @"140",
                          @"Republica Arabe Saharaui Democratica",@"141",
                          @"Republica Centroafricana",@"142",
                          @"Republica Checa",@"143",
                          @"Republica del Congo",@"144",
                          @"Republica Democratica del Congo",@"145",
                          @"Republica Dominicana",@"146",
                          @"Ruanda",@"147",
                          @"Rumania",@"148",
                          @"Rusia", @"149",
                          @"Salvador",@"150",
                          @"Samoa Americana",@"151",
                          @"Samoa", @"152",
                          @"San Bartolome",@"153",
                          @"Santa Lucia",@"154",
                          @"Senegal", @"155",
                          @"Sierra Leona",@"156",
                          @"Siria",@"157",
                          @"Somalia", @"158",
                          @"Suazilandia",@"159",
                          @"Sudafrica",@"160",
                          @"Sudan del Sur", @"161",
                          @"Suecia",@"162",
                          @"Suiza",@"163",
                          @"Surinam", @"164",
                          @"Tailandia",@"165",
                          @"Tanzania",@"166",
                          @"Tayikistan", @"167",
                          @"Togo",@"168",
                          @"Tonga",@"169",
                          @"Tratado Antartico",@"170",
                          @"Tunez",@"171",
                          @"Turkmenistan", @"172",
                          @"Turquia",@"173",
                          @"Ucrania",@"174",
                          @"Uganda", @"175",
                          @"Uruguay",@"176",
                          @"Uzbekistan",@"177",
                          @"Vaticano", @"178",
                          @"Venezuela",@"179",
                          @"Vietnam",@"180",
                          @"Yemen", @"181",
                          @"Yibuti",@"182",
                          @"Zimbabue",@"183",
                          nil];
    _diccionarioPaisesImagenes = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Afganistan",        @"0",
                                  @"Aland",             @"1",
                                  @"Albania",           @"2",
                                  @"Andorra",           @"3",
                                  @"Angola",            @"4",
                                  @"Arabia_Saudita",    @"5",
                                  @"Argelia",           @"6",
                                  @"Argentina",         @"7",
                                  @"Armenia",           @"8",
                                  @"Aruba",             @"9",
                                  @"Australia",         @"10",
                                  @"Austria",           @"11",
                                  @"Azerbaiyan",        @"12",
                                  @"Bahamas",           @"13",
                                  @"Banglades",         @"14",
                                  @"Barbados",          @"15",
                                  @"Barein",            @"16",
                                  @"Belgica",           @"17",
                                  @"Belice",            @"18",
                                  @"Benin",             @"19",
                                  @"Bielorrusia",       @"20",
                                  @"Birmania",          @"21",
                                  @"Bolivia",           @"22",
                                  @"Bonaire",           @"23",
                                  @"Botsuana",          @"24",
                                  @"Brasil",            @"25",
                                  @"Brunei",            @"26",
                                  @"Bulgaria",          @"27",
                                  @"Burkina_Faso",      @"28",
                                  @"Burundi",           @"29",
                                  @"Butan",             @"30",
                                  @"Cabo_Verde",        @"31",
                                  @"Camboya",           @"32",
                                  @"Camerun",           @"33",
                                  @"Canada",            @"34",
                                  @"Catar",             @"35",
                                  @"Chad",              @"36",
                                  @"Chile",             @"37",
                                  @"China",             @"38",
                                  @"Chipre",            @"39",
                                  @"Cocos",             @"40",
                                  @"Colombia",@"41",
                                  @"Corea_del_Norte",@"42",
                                  @"Corea_del_Sur",@"43",
                                  @"Costa_de_Marfil",@"44",
                                  @"Costa_Rica",@"45",
                                  @"Croacia",@"46",
                                  @"Cuba",@"47",
                                  @"Curazao",@"48",
                                  @"Dinamarca",@"49",
                                  @"Dominica",@"50",
                                  @"Egipto",@"51",
                                  @"Emiratos_Arabes_Unidos",@"52",
                                  @"Eritrea",@"53",
                                  @"Etiopia",@"54",
                                  @"Escocia",@"55",
                                  @"Eslovaquia",@"56",
                                  @"Eslovenia",@"57",
                                  @"España",@"58",
                                  @"Estados_Unidos",@"59",
                                  @"Estonia",@"60",
                                  @"Finlandia",@"61",
                                  @"Francia",@"62",
                                  @"Gales",@"63",
                                  @"Gambia",@"64",
                                  @"Gabon",@"65",
                                  @"Georgia",@"66",
                                  @"Ghana",@"67",
                                  @"Gibraltar",@"68",
                                  @"Gran_Colombia",@"69",
                                  @"Granada",@"70",
                                  @"Grecia",@"71",
                                  @"Groenlandia",@"72",
                                  @"Guam",@"73",
                                  @"Guatemala",@"74",
                                  @"Guayana_Francesa",@"75",
                                  @"Guinea_Ecuatorial",@"76",
                                  @"Guinea-Bisau",@"77",
                                  @"Guinea",@"78",
                                  @"Guyana",@"79",
                                  @"Haiti",@"80",
                                  @"Honduras",@"81",
                                  @"Hong_Kong",@"82",
                                  @"India",@"83",
                                  @"Indonesia",@"84",
                                  @"Inglaterra",@"85",
                                  @"Irak",@"86",
                                  @"Iran",@"87",
                                  @"Irlanda",@"88",
                                  @"Islandia",@"89",
                                  @"Islas_Malvinas",@"90",
                                  @"Israel",@"91",
                                  @"Italia",@"92",
                                  @"Jamaica",@"93",
                                  @"Japon",@"94",
                                  @"Jersey",@"95",
                                  @"Jordania",@"96",
                                  @"Kenia",@"97",
                                  @"Kosovo",@"98",
                                  @"Lesoto",@"99",
                                  @"Letonia",@"100",
                                  @"Libano",@"101",
                                  @"Liberia",@"102",
                                  @"Libia", @"103",
                                  @"Liechtenstein",@"104",
                                  @"Lituania", @"105",
                                  @"Luxemburgo", @"106",
                                  @"Macao", @"107",
                                  @"Madagascar", @"108",
                                  @"Malasia", @"109",
                                  @"Malaui", @"110",
                                  @"Maldivas", @"111",
                                  @"Malta", @"112",
                                  @"Mali", @"113",
                                  @"Marruecos", @"114",
                                  @"Martinica", @"115",
                                  @"Mauricio", @"116",
                                  @"Mauritania", @"117",
                                  @"Mayotte", @"118",
                                  @"Mexico", @"119",
                                  @"Moldavia", @"120",
                                  @"Mongolia",@"121",
                                  @"Montenegro", @"122",
                                  @"Mozambique", @"123",
                                  @"Namibia", @"124",
                                  @"Nauru",@"125",
                                  @"Nicaragua", @"126",
                                  @"Niger", @"127",
                                  @"Nigeria", @"128",
                                  @"Noruega", @"129",
                                  @"Nueva_Zelanda", @"130",
                                  @"Oman", @"131",
                                  @"Paises_Bajos", @"132",
                                  @"Pakistan",@"133",
                                  @"Palestina", @"134",
                                  @"Panama",@"135",
                                  @"Paraguay",@"136",
                                  @"Peru",@"137",
                                  @"Portugal", @"138",
                                  @"Puerto_Rico",@"139",
                                  @"Reino_Unido", @"140",
                                  @"Republica_Arabe_Saharaui_Democratica", @"141",
                                  @"Republica_Centroafricana", @"142",
                                  @"Republica_Checa", @"143",
                                  @"Republica_del_Congo", @"144",
                                  @"Republica_Democratica_del_Congo", @"145",
                                  @"Republica_Dominicana", @"146",
                                  @"Ruanda", @"147",
                                  @"Rumania", @"148",
                                  @"Rusia", @"149",
                                  @"Salvador", @"150",
                                  @"Samoa_Americana", @"151",
                                  @"Samoa", @"152",
                                  @"San_Bartolome", @"153",
                                  @"Santa_Lucia", @"154",
                                  @"Senegal", @"155",
                                  @"Sierra_Leona", @"156",
                                  @"Siria", @"157",
                                  @"Somalia", @"158",
                                  @"Suazilandia", @"159",
                                  @"Sudafrica", @"160",
                                  @"Sudan_del_Sur", @"161",
                                  @"Suecia", @"162",
                                  @"Suiza", @"163",
                                  @"Surinam", @"164",
                                  @"Tailandia", @"165",
                                  @"Tanzania", @"166",
                                  @"Tayikistan", @"167",
                                  @"Togo", @"168",
                                  @"Tonga", @"169",
                                  @"Tratado_Antartico", @"170",
                                  @"Tunez", @"171",
                                  @"Turkmenistan", @"172",
                                  @"Turquia", @"173",
                                  @"Ucrania", @"174",
                                  @"Uganda", @"175",
                                  @"Uruguay", @"176",
                                  @"Uzbekistan", @"177",
                                  @"Vaticano", @"178",
                                  @"Venezuela", @"179",
                                  @"Vietnam", @"180",
                                  @"Yemen", @"181",
                                  @"Yibuti", @"182",
                                  @"Zimbabue", @"183",
                                  nil];

    _pickerView1.dataSource = self;
    _pickerView1.delegate = self;

    _lbl1.text = @"Pais Seleccionado : Afganistan";
    
    UIColor *color = [UIColor colorWithRed: (255./255) green:(255./255) blue:(255./255) alpha:1.0];
    
    self.view.backgroundColor = color;
    
    _imageView1.image = [UIImage imageNamed:@"Inicio"];
    
    NSLog(@"%@",_lbl1.text);
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _diccionarioPaises.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
        NSString *row2 = [NSString stringWithFormat:@"%ld", (long)row];
        return _diccionarioPaises[row2];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    banderaSeleccionada = [NSString stringWithFormat:@"%ld", (long)row];
    NSString *row2 = [NSString stringWithFormat:@"%@", banderaSeleccionada];
    NSString *resultado = [NSString stringWithFormat:@"Pais seleccionado : %@ ",[_diccionarioPaises objectForKey:row2]];
    
    _lbl1.text = resultado;
    
    NSLog(@"Bandera = %@",bandera);
    NSLog(@"Bandera seleccionada = %@",banderaSeleccionada);
}

- (IBAction)btnVerificar:(UIButton *)sender {
    BOOL band = true;
    
    if([bandera isEqual:banderaSeleccionada]){
        _lblResultado.text = @"Resultado : Correctoooooooo 👌";
        band = false;
        NSString *path = [NSString stringWithFormat:@"%@/correct-ding.mp3",[[NSBundle mainBundle] resourcePath]];
            
        NSURL *sonidoUrl = [NSURL fileURLWithPath:path];
        
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:sonidoUrl error:nil];
        
        audioPlayer.volume = 50;
        [audioPlayer play];
        vidas = vidas + 1;
        }
    if(band){
        _lblResultado.text = @"Resultado : Incorrectoooooooo 👎";
        NSString *path = [NSString stringWithFormat:@"%@/006150783_prev.mp3",[[NSBundle mainBundle] resourcePath]];
            
        NSURL *sonidoUrl = [NSURL fileURLWithPath:path];
        
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:sonidoUrl error:nil];
        
        audioPlayer.volume = 50;
        [audioPlayer play];
        vidas = vidas - 1;
    }
    
    _lblVidas.text = [NSString stringWithFormat:@"Oprtunidades: %ld",(long)vidas];
}

- (IBAction)btnIniciar:(UIButton *)sender {
    int r = arc4random_uniform((int)_diccionarioPaises.count);
    NSString *cadena = [NSString stringWithFormat:@"%d", r];
    bandera = cadena;
    self.imageView1.image = [UIImage imageNamed:[_diccionarioPaisesImagenes objectForKey:cadena]];
    vidas = 3;
    _lblVidas.text = [NSString stringWithFormat:@"Oprtunidades: %ld",(long)vidas];
}

@end
