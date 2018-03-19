//
//  ViewController.m
//  SKSliderDemo
//
//  Created by AY on 2018/3/19.
//  Copyright © 2018年 AY. All rights reserved.
//

#import "ViewController.h"
#import "CLSlider.h"

#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define kMainColor [UIColor colorWithRed:37/255.0 green:112/255.0 blue:237/255.0 alpha:1.0]
@interface ViewController ()
@property (nonatomic,strong) CLSlider *mSlider3;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	CGFloat slider_w = SCREEN_WIDTH - 20;
	
    self.mSlider3 = [CLSlider new];
    self.mSlider3.sliderStyle = CLSliderStyle_Cross;
    self.mSlider3.backgroundColor = [UIColor whiteColor];
    self.mSlider3.thumbTintColor = kMainColor;
    self.mSlider3.thumbShadowColor = [UIColor greenColor];
	self.mSlider3.frame = CGRectMake(10, 200, slider_w, 50);
    self.mSlider3.thumbShadowOpacity = 1.0f;
    self.mSlider3.thumbDiameter = 23;
    self.mSlider3.scaleLineColor = kMainColor;
    self.mSlider3.scaleLineWidth = 2.0f;
    self.mSlider3.scaleLineHeight = 10;
    self.mSlider3.scaleLineNumber = 5;
	
	self.mSlider3.markDataArr = @[@"2011",@"2012",@"2013",@"2014",@"2015",@"2016"];
    [self.mSlider3 setSelectedIndex:0];
    [self.mSlider3 addTarget:self action:@selector(slider03ChangeAction:) forControlEvents:UIControlEventValueChanged];
	
    [self.view addSubview:self.mSlider3];
}

- (void)slider03ChangeAction:(CLSlider *)sender {

	
	NSLog(@"%ld",sender.currentIdx);
}



- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
