//
//  ViewController.m
//  WebView Changing Sites with SegmentedControl
//
//  Created by Aland Kawa on 01/02/16.
//  Copyright © 2016 Aland Kawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UILabel *SelectASegment;
@property (strong, nonatomic) IBOutlet UIWebView *WebView;

- (IBAction)ChangeSegment:(UISegmentedControl *)sender;
@end

@implementation ViewController {
    UIView* loadingView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (IBAction)changeWebsite:(UISegmentedControl *)sender {
    if (segment.selectedSegmentIndex == 0) {
        [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.co.uk"]]];
    }
    
    if (segment.selectedSegmentIndex == 1) {
        [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.bing.co.uk"]]];
    }
}
 */




- (IBAction)ChangeSegment:(UISegmentedControl *)sender {
    
    if (_segmentedControl.selectedSegmentIndex == 0) {
        [_WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]]];
        _SelectASegment.hidden = YES;
    }
    
    if (_segmentedControl.selectedSegmentIndex == 1) {
        [_WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://facebook.com"]]];
            }
    _SelectASegment.hidden = YES;
}


@end
