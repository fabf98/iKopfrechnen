//
//  EinstellungenTableViewController.h
//  iKopfrechnen
//
//  Created by Fabio Franke on 13.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface EinstellungenViewController : UIViewController



@property (weak, nonatomic) IBOutlet UILabel *maxErgebnisLabel;

- (IBAction)maxErgebnisSlider:(id)sender;

- (IBAction)cancelAndDismiss:(UIBarButtonItem *)sender;

- (IBAction)saveAndDismiss:(UIBarButtonItem *)sender;

@property (weak, nonatomic) IBOutlet UISlider *maxErgenisSlider;

@property (weak, nonatomic) IBOutlet UISwitch *plusSwitch;

@property (weak, nonatomic) IBOutlet UISwitch *minusSwitch;

@property (weak, nonatomic) IBOutlet UISwitch *malSwitch;

@property (weak, nonatomic) IBOutlet UISwitch *durchSwitch;









@end


