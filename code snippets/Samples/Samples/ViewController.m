//
//  ViewController.m
//  Samples
//
//  Created by Eduard Panasiuk on 3/25/18.
//  Copyright © 2018 Eduard Panasiuk. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Style.h"
#import "UIFont+Style.m"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel* titleLabel;
@property (nonatomic, strong) IBOutlet UILabel* headerLabel;
@property (nonatomic, strong) IBOutlet UILabel* subtitleLabel;
@property (nonatomic, strong) IBOutlet UILabel* maintextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor ex_mainBgColor];
    
    self.titleLabel.backgroundColor = [UIColor clearColor];
    self.titleLabel.textColor = [UIColor ex_titleTextColor];
    self.titleLabel.font = [UIFont ex_titleFont];
    
    self.headerLabel.backgroundColor = [UIColor clearColor];
    self.headerLabel.textColor = [UIColor ex_headerTextColor];
    self.headerLabel.font = [UIFont ex_headerFont];
    
    self.subtitleLabel.backgroundColor = [UIColor clearColor];
    self.subtitleLabel.textColor = [UIColor ex_subTitleTextColor];
    self.subtitleLabel.font = [UIFont ex_subTitleFont];
    
    self.maintextLabel.backgroundColor = [UIColor clearColor];
    self.maintextLabel.textColor = [UIColor ex_mainTextColor];
    self.maintextLabel.font = [UIFont ex_mainFont];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
