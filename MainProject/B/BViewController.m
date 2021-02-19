//
//  BViewController.m
//  MainProject
//
//  Created by 于鸿鹏 on 2021/2/5.
//

#import "BViewController.h"

@interface BViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation BViewController

- (instancetype)initWithContentText:(NSString *)contentText {
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"B";
    self.view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.contentLabel];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.contentLabel sizeToFit];
    self.contentLabel.center = self.view.center;
}

#pragma mark - getters and setters
- (UILabel *)contentLabel {
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

@end
