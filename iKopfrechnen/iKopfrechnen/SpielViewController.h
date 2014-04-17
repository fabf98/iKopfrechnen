//
//  SpielViewController.h
//  iKopfrechnen
//
//  Created by Fabio Franke on 07.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpielViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *ersterWertLabel;
@property (weak, nonatomic) IBOutlet UILabel *zweiterWertLabel;
@property (weak, nonatomic) IBOutlet UILabel *rechenzeichenLabel;
@property (weak, nonatomic) IBOutlet UITextField *ergebnisTextfeld;
@property (weak, nonatomic) IBOutlet UILabel *korrekturLabel;
- (IBAction)checkButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *weiterButton;
@property (weak, nonatomic) IBOutlet UIButton *checkButton;
- (IBAction)weiterButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *punkteLabel;
@property (weak, nonatomic) IBOutlet UIButton *überspringenButton;
- (IBAction)überspringenButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *richtigesErgebnisLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *spielProgressView;
@property (weak, nonatomic) IBOutlet UILabel *aufgabeFortschrittLabel;
- (IBAction)spielProgress:(id)sender;
- (IBAction)neueAufgabe:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *punkteLabelÜberschrift;
- (IBAction)spielStarten:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *spielStartenButton;



@end
