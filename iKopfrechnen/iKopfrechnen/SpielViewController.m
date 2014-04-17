//
//  SpielViewController.m
//  iKopfrechnen
//
//  Created by Fabio Franke on 07.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import "SpielViewController.h"

@interface SpielViewController ()

@end

@implementation SpielViewController


@synthesize ersterWertLabel;
@synthesize zweiterWertLabel;
@synthesize rechenzeichenLabel;
@synthesize ergebnisTextfeld;
@synthesize korrekturLabel;
@synthesize weiterButton;
@synthesize checkButton;
@synthesize punkteLabel;
@synthesize überspringenButton;
@synthesize richtigesErgebnisLabel;
@synthesize spielProgressView;
@synthesize aufgabeFortschrittLabel;
@synthesize punkteLabelÜberschrift;
@synthesize spielStartenButton;




int punkte = 0;
int ergebnis = 0;












- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    
    ergebnisTextfeld.hidden = YES;
    checkButton.hidden = YES;
    weiterButton.hidden = YES;
    überspringenButton.hidden = YES;
    
    punkteLabel.hidden = YES;
    ersterWertLabel.hidden = YES;
    zweiterWertLabel.hidden = YES;
    rechenzeichenLabel.hidden = YES;
    richtigesErgebnisLabel.hidden = YES;
    aufgabeFortschrittLabel.hidden = YES;
    punkteLabelÜberschrift.hidden = YES;
    korrekturLabel.hidden = YES;
    
    ergebnisTextfeld.hidden = YES;
    
    spielProgressView.hidden = YES;
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    

    // Do any additional setup after loading the view
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/






- (IBAction)checkButton:(id)sender {
    //Action zum überprüfen der Eingabe, Korrektur, Aktualisieren der Punktzahl sowie zum anzeigen des weiterButtons.
    
    korrekturLabel.hidden = NO;
    
    ergebnisTextfeld.enabled = NO;
    checkButton.hidden = YES;
    weiterButton.hidden = NO;
    überspringenButton.hidden = YES;
    
    
    int ersterWert = ersterWertLabel.text.intValue;
    int zweiterWert = zweiterWertLabel.text.intValue;
    
    
    
    
    
    
    if ([rechenzeichenLabel.text isEqualToString:(@"+")]) {
        
        
        
        
        
        
        ergebnis = ersterWert + zweiterWert;
        
        
        
        }
    
    
    
    
    
    if ([rechenzeichenLabel.text isEqualToString:(@"-")]) {
        
        
        
        ergebnis = ersterWert - zweiterWert;
        
      
        
        
        
           }
    
        
        if ([rechenzeichenLabel.text isEqualToString:(@"x")]) {
            
            
            
           ergebnis = ersterWert * zweiterWert;
            
            
    
    
        }
        
        
        
        
        if ([rechenzeichenLabel.text isEqualToString:(@":")]) {
            
            
            
            ergebnis = ersterWert/zweiterWert;
            
            
            
            
        }
    
    if (ergebnisTextfeld.text.intValue == ergebnis) {
        
        [korrekturLabel setText:(@"Richtig")];
        korrekturLabel.textColor = [UIColor greenColor];
        
        ergebnisTextfeld.textColor = [UIColor greenColor];
        
        
        
        
        punkte++;
        punkteLabel.text = [NSString stringWithFormat:@"%d", punkte];
        
        
        
        
    }
    
    else {
        
        [korrekturLabel setText:(@"Falsch")];
        korrekturLabel.textColor = [UIColor redColor];
        
        ergebnisTextfeld.textColor = [UIColor redColor];
        
        richtigesErgebnisLabel.hidden = NO;
        richtigesErgebnisLabel.textColor = [UIColor redColor];
        richtigesErgebnisLabel.text = [NSString stringWithFormat:@"Richtiges Ergebnis: %d", ergebnis];
        
        punkte--;
        punkteLabel.text = [NSString stringWithFormat:@"%d", punkte];
        
            }
    
    
    
    if (punkte < 0) {
        
        punkteLabel.textColor = [UIColor redColor];
        
    }
    
    if (punkte == 0) {
        
        punkteLabel.textColor = [UIColor blackColor];
        
    }
    
    if (punkte > 0) {
        
        punkteLabel.textColor = [UIColor greenColor];
    }
    }









- (IBAction)weiterButton:(id)sender {
    //Action zum generieren einer neuen Aufgabe NACH Lösen der aktuellen.
    
    
        
    

    weiterButton.hidden = YES;
    checkButton.hidden = NO;
    ergebnisTextfeld.enabled = YES;
    überspringenButton.hidden = NO;
    richtigesErgebnisLabel.hidden = YES;
    
    
    
    [ergebnisTextfeld setText:(@"")];
    ergebnisTextfeld.textColor = [UIColor blackColor];
    
    [korrekturLabel setText:(@"")];
    
    
}

    
    - (IBAction)überspringenButton:(id)sender {
    //Action zum generieren einer neuen Aufgabe VOR Lösen der aktuellen.
    
    
    
    
    weiterButton.hidden = YES;
    checkButton.hidden = NO;
    ergebnisTextfeld.enabled = YES;
    
    
    
    [ergebnisTextfeld setText:(@"")];
    ergebnisTextfeld.textColor = [UIColor blackColor];
    
    [korrekturLabel setText:(@"")];
    
    
    
    
    
    
        
    
    
    
        

}


- (IBAction)spielProgress:(id)sender {
    
    int spielProgress = spielProgressView.progress * 10;
    spielProgressView.progress +=0.1;
    
    spielProgress++;
    
    aufgabeFortschrittLabel.text = [NSString stringWithFormat:@"Aufgabe %d von 10", spielProgress];
    
    if (spielProgress == 11) {
        
       NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
        int rekord = [defaults integerForKey:@"Rekord"];
        
        if (punkte > rekord ) {
            
            rekord = punkte;
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            
            [defaults setInteger:rekord forKey:@"Rekord"];
        }
        
        [defaults setInteger:punkte forKey:@"Punkte"];
        
        punkte = 0;
        
        punkteLabel.text = [NSString stringWithFormat:@"%d", punkte];
        
        
        spielProgress = 1;
        
        self.spielProgressView.progress = 0.1;
        aufgabeFortschrittLabel.text = [NSString stringWithFormat:@"Aufgabe %d von 10", spielProgress];
        
        
        
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"spielBeendetView"];
        [self presentViewController:vc animated:YES completion:nil];
        
    }
    
    
}

- (IBAction)neueAufgabe:(id)sender {
    
    //Diese Methode wird sowohl vom spielStarten, vom weiterButton als auch vom überspringenButton ausgeführt.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    int maxErgebnis = [defaults integerForKey:@"maxErgebnis"];
    
    
    /*BOOL plus = [defaults boolForKey:@"plus"];
    BOOL minus = [defaults boolForKey:@"minus"];
    BOOL mal = [defaults boolForKey:@"mal"];
    BOOL geteiltDurch = [defaults boolForKey:@"geteiltDurch"]; */
    
    
    int ersterWert = arc4random_uniform(maxErgebnis +1);
    int zweiterWert = arc4random_uniform(maxErgebnis +1);
    
    
    NSString *ersterWertString = [NSString stringWithFormat:@"%d", ersterWert];
    NSString *zweiterWertString = [NSString stringWithFormat:@"%d", zweiterWert];
    
    [ersterWertLabel setText:(@"%d", ersterWertString)];
    [zweiterWertLabel setText:(@"%d", zweiterWertString)];
    
    
    
    
    int rechenzeichenRandom = arc4random_uniform(4);
    
    
    if (rechenzeichenRandom == 0) {
        
        //if (plus == YES) {
            
            [rechenzeichenLabel setText:(@"+")];
        
        
        while ((ersterWert + zweiterWert) > maxErgebnis) {
            
            ersterWert = arc4random_uniform(maxErgebnis + 1);
            zweiterWert = arc4random_uniform(maxErgebnis + 1);
            
            NSString *ersterWertString = [NSString stringWithFormat:@"%d", ersterWert];
            NSString *zweiterWertString = [NSString stringWithFormat:@"%d", zweiterWert];
            
            [ersterWertLabel setText:(@"%d", ersterWertString)];
            [zweiterWertLabel setText:(@"%d", zweiterWertString)];

        }
        
                    
            
        /*}
        
        
            else {
                while (rechenzeichenRandom == 0) {
                    rechenzeichenRandom = arc4random_uniform(4);
                }
                
                
            }*/

        
    }
    
    if (rechenzeichenRandom == 1) {
        
        //if (minus == YES) {
            
            
        zweiterWert = arc4random_uniform(ersterWert);
        
        
        NSString *ersterWertString = [NSString stringWithFormat:@"%d", ersterWert];
        NSString *zweiterWertString = [NSString stringWithFormat:@"%d", zweiterWert];
        
        [ersterWertLabel setText:(@"%d", ersterWertString)];
        [zweiterWertLabel setText:(@"%d", zweiterWertString)];
        
        
        
        [rechenzeichenLabel setText:(@"-")];
        /*}
       
        
        else {
            while (rechenzeichenRandom == 1) {
                rechenzeichenRandom = arc4random_uniform(4);
            }
            
            
        }*/

        
    }
    
    
    
    if (rechenzeichenRandom == 2) {
        
        //if (mal == YES) {
            
            
            
            [rechenzeichenLabel setText:(@"x")];
        
        while ((ersterWert * zweiterWert) > maxErgebnis) {
            
            ersterWert = arc4random_uniform(maxErgebnis +1);
            zweiterWert = arc4random_uniform(maxErgebnis +1);
            
            NSString *ersterWertString = [NSString stringWithFormat:@"%d", ersterWert];
            NSString *zweiterWertString = [NSString stringWithFormat:@"%d", zweiterWert];
            
            [ersterWertLabel setText:(@"%d", ersterWertString)];
            [zweiterWertLabel setText:(@"%d", zweiterWertString)];

            
        }
            
            /*}
        
        
        else {
            while (rechenzeichenRandom == 2) {
                rechenzeichenRandom = arc4random_uniform(4);
            }
            
            
        }*/

    
    
    
    }
    
    if (rechenzeichenRandom == 3) {
        
        //if (geteiltDurch == YES) {
            
            
        zweiterWert = arc4random_uniform(ersterWert) +2;
        
        
        NSString *ersterWertString = [NSString stringWithFormat:@"%d", ersterWert];
        NSString *zweiterWertString = [NSString stringWithFormat:@"%d", zweiterWert];
        
        [ersterWertLabel setText:(@"%d", ersterWertString)];
        [zweiterWertLabel setText:(@"%d", zweiterWertString)];
        
        
        
        [rechenzeichenLabel setText:(@":")];
        
         
        while ((ersterWert % zweiterWert) > 0) {
            
            ersterWert = arc4random_uniform(maxErgebnis +1);
            zweiterWert = arc4random_uniform(maxErgebnis +1) +2;
            
            
            NSString *ersterWertString = [NSString stringWithFormat:@"%d", ersterWert];
            NSString *zweiterWertString = [NSString stringWithFormat:@"%d", zweiterWert];
            
            [ersterWertLabel setText:(@"%d",ersterWertString)];
            [zweiterWertLabel setText:(@"%d", zweiterWertString)];
            
            [rechenzeichenLabel setText:@":"];
        
        }
        
        
        
        
        
        
       
            
        /*}
        
        
        else {
            while (rechenzeichenRandom == 3) {
                rechenzeichenRandom = arc4random_uniform(4);
            }
            
            
        }*/

        
        

}
    
}


- (IBAction)spielStarten:(id)sender {
    
    spielStartenButton.hidden = YES;
    checkButton.hidden = NO;
    überspringenButton.hidden = NO;
    
    punkteLabel.hidden = NO;
    ersterWertLabel.hidden = NO;
    zweiterWertLabel.hidden = NO;
    rechenzeichenLabel.hidden = NO;
    richtigesErgebnisLabel.hidden = YES;
    aufgabeFortschrittLabel.hidden = NO;
    punkteLabelÜberschrift.hidden = NO;
    korrekturLabel.hidden = YES;
    
    ergebnisTextfeld.hidden = NO;
    
    spielProgressView.hidden = NO;
    
}
@end
