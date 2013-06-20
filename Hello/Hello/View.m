//
//  View.m
//  Hello
//
//  Created by nyuguest on 2/7/13.
//  Copyright (c) 2013 nyuguest. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor colorWithRed:0xB3/255.0 green:0xB3/255.0 blue:0xB3/255.0 alpha:1];
        CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
        
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
    
    
    
	UIFont *font = [UIFont boldSystemFontOfSize: 25.0];
	NSString *string = @"Hello, World!";

    
    	CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, .5, 1.0, 1.0);
	CGPoint point = CGPointMake(-100, 0);
	[string drawAtPoint: point withFont: font];
      
    font = [UIFont italicSystemFontOfSize: 25.0];
	string = @"Hello, Universe!";
    
    
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 1, .5, 2.0, 1.0);
	point = CGPointMake(-100, 50);
	[string drawAtPoint: point withFont: font];

    
    NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];
    
	NSError *error;
	string = [[NSString alloc]
              initWithContentsOfURL: url
              encoding: NSUTF8StringEncoding
              error: &error
              ];
    
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, .5, 1.0, 1.0);
	point = CGPointMake(-150, 100);
	[string drawAtPoint: point withFont: font];
    
	if (string == nil) {
		string = [error localizedDescription];
	}
    
    
    
    font = [UIFont boldSystemFontOfSize: 8.5];
    string = [NSString stringWithFormat:
                        @"drawRect: self.bounds.origin == (%g, %g), self.bounds.size == %g × %g",
                        self.bounds.origin.x,
                        self.bounds.origin.y,
                        self.bounds.size.width,
                        self.bounds.size.height];
    
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, .5, 1.0, 1.0);
	point = CGPointMake(-150, 150);
	[string drawAtPoint: point withFont: font];
}


@end
