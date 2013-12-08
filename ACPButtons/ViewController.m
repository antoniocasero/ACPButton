//
//  ViewController.m
//  ACPButtons
//
//  Created by Antonio Casero Palmero on 7/14/13.
//  Copyright (c) 2013 ACP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
    
    
    //We set up different buttons
    
    /*--------------------------------------------------------------------------
        Custom buttons with gradients
     --------------------------------------------------------------------------*/
    
    [_testButtonNoImage1 setStyleType:ACPButtonOK];
    [_testButtonNoImage1 setLabelTextColor:[UIColor whiteColor] highlightedColor:[UIColor whiteColor] disableColor:nil];
    [_testButtonNoImage1 setLabelFont:[UIFont fontWithName:@"Trebuchet MS" size:20]];

    
    [_testButtonNoImage2 setStyleType:ACPButtonCancel];
    [_testButtonNoImage2 setCornerRadius:10];
    
    
    [_testButtonNoImage3 setStyle:[UIColor yellowColor]  andBottomColor:[UIColor orangeColor]];
    [_testButtonNoImage3 setLabelTextColor:[UIColor orangeColor] highlightedColor:[UIColor redColor] disableColor:nil];
    [_testButtonNoImage3 setCornerRadius:20];
    [_testButtonNoImage3 setBorderStyle:[UIColor orangeColor] andInnerColor:nil];
//    [_testButtonNoImage3 setGlowHighlightedState:YES];
    
     /*--------------------------------------------------------------------------
        Custom Flat buttons
      --------------------------------------------------------------------------*/
    [_testButtonNoImage4 setFlatStyleType:ACPButtonGrey];
    [_testButtonNoImage5 setFlatStyleType:ACPButtonDarkGrey];
    [_testButtonNoImage5 setBorderStyle:[UIColor blackColor] andInnerColor:[UIColor darkGrayColor]];
    [_testButtonNoImage5 setLabelFont:[UIFont fontWithName:@"Trebuchet MS" size:20]];
    
     /*--------------------------------------------------------------------------
        Image resize buttons
      --------------------------------------------------------------------------*/
    [_testButtonWithImage1 setStyleWithImage:@"cont-bt_normal.png" highlightedImage:@"cont-bt_normal.png" disableImage:nil andInsets:UIEdgeInsetsMake(19, 7, 19, 7)];
    [_testButtonWithImage1 setLabelTextShadow:CGSizeMake(-1, -1) normalColor:[UIColor blackColor] highlightedColor:nil disableColor:nil];
    [_testButtonWithImage1 setLabelFont:[UIFont fontWithName:@"Helvetica-BoldOblique" size:20]];
    [_testButtonWithImage1 setGlowHighlightedState:YES];
    
    
    [_testButtonWithImage2 setStyleWithImage:@"alert-gray-button.png" highlightedImage:nil disableImage:nil andInsets:UIEdgeInsetsMake(19, 7, 19, 7)];
    [_testButtonWithImage2 setGlowHighlightedState:YES];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
