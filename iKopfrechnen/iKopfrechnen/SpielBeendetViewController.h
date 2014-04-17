//
//  SpielBeendetViewController.h
//  iKopfrechnen
//
//  Created by Fabio Franke on 11.04.14.
//  Copyright (c) 2014 Fabio Franke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpielBeendetViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *punkteLabel;
@property (weak, nonatomic) IBOutlet UILabel *rekordLabel;
@property (weak, nonatomic) IBOutlet UILabel *neuerRekordLabel;

- (IBAction)hauptMenü:(UIButton *)sender;


@end
