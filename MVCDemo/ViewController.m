//
//  ViewController.m
//  MVCDemo
//
//  Created by Thomas on 2016-02-02.
//  Copyright © 2016 Thomas Månsson. All rights reserved.
//

#import "ViewController.h"
#import "TitelGenerator.h"

@interface ViewController ()

@property (strong, nonatomic) TitelGenerator *titleGenerator;
@property (weak, nonatomic) IBOutlet UITextView *titleLabel;

@end

@implementation ViewController

//Lazy init
-(TitelGenerator*)titleGenerator {
    if(!_titleGenerator) {
        _titleGenerator = [[TitelGenerator alloc] init];
    }
    return _titleGenerator;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)generate:(id)sender {
    self.titleLabel.text = [self.titleGenerator generateTitle];
}


@end
