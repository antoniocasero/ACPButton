
//
//  ACPButton.m
//
//  Created by Antonio Casero
//  Copyright (c) 2013 Antonio Casero. All rights reserved.
//

#import "ACPButton.h"

//Values by default - Set up this values depending of your project design!

#define kLabelFont [UIFont fontWithName:@"HelveticaNeue" size:15]
#define kColorFontNormal [UIColor whiteColor]
#define kColorFontHighlighted [UIColor blackColor]
#define kColorFontDisable [UIColor grayColor]

#define kColorShadowNormal [UIColor blackColor]
#define kColorShadowHighlighted [UIColor whiteColor]
#define kColorShadowDisable [UIColor clearColor]


#define kShadowOffset CGSizeMake(0, 0)

#define kCornerRadius 5

@interface ACPButton ()


@property (strong, nonatomic) UIColor * borderColor;
@property (strong, nonatomic) UIColor * inneColor;
@property (strong, nonatomic) UIColor * topColor;
@property (strong, nonatomic) UIColor * bottomColor;

//Flat style
@property (assign, nonatomic) BOOL isFlat;
@property (strong, nonatomic) UIColor * normalStateColor;
@property (strong, nonatomic) UIColor * highlightedColor;

@property (assign, nonatomic) NSInteger buttonRadius;




@end

@implementation ACPButton



-(id)initWithCoder:(NSCoder *)aDecoder {

    self = [super initWithCoder:aDecoder];
    if(self) {
        
        /*--------------------------------------------------------------------------
            This type of button is created by default.
        --------------------------------------------------------------------------*/
        
        [self setStyleType:ACPButtonGrey];
    }
    return self;
}


/*--------------------------------------------------------------------------
    UIButton Overrides
--------------------------------------------------------------------------*/




+ (ACPButton *)buttonWithType:(UIButtonType)type
{
    return [super buttonWithType:UIButtonTypeCustom];
}



- (void) setStyleType:(ACPButtonType)style {
    
    _isFlat = NO;
    
    switch (style) {
            
            /*--------------------------------------------------------------------------
                You can set this values acording with your project
            --------------------------------------------------------------------------*/
            
            
        case ACPButtonOK:
            _topColor = [UIColor colorWithRed:0.588235 green:0.847059 blue:0.396078 alpha:1];
            _bottomColor=[UIColor colorWithRed:0.388235 green:0.650980 blue:0.184314 alpha:1];
            _borderColor = [UIColor colorWithRed:0.388235 green:0.650980 blue:0.184314 alpha:1] ;
            _inneColor = nil;
            break;
        case ACPButtonBlue:
            _topColor = [UIColor colorWithRed:0.423529 green:0.713726 blue:0.921569 alpha:1];
            _bottomColor=[UIColor colorWithRed:0.211765 green:0.482353 blue:0.815686 alpha:1];
            _borderColor = [UIColor colorWithRed:0.250980 green:0.505882 blue:0.686275 alpha:1] ;
            _inneColor = nil;
            break;
        case ACPButtonGrey:
            _topColor = [UIColor colorWithRed:0.627451 green:0.627451 blue:0.627451 alpha:1];
            _bottomColor=[UIColor colorWithRed:0.509804 green:0.509804 blue:0.509804 alpha:1];
            _borderColor = [UIColor colorWithRed:0.627451 green:0.627451 blue:0.627451 alpha:1] ;
            _inneColor = nil;
            break;
        case ACPButtonCancel:
            _topColor = [UIColor colorWithRed:0.929412 green:0.392157 blue:0.290196 alpha:1];
            _bottomColor=[UIColor colorWithRed:0.839216 green:0.282353 blue:0.270588 alpha:1];
            _borderColor = [UIColor colorWithRed:0.815686 green:0.215686 blue:0.145098 alpha:1];
            _inneColor = nil;
            break;
        case ACPButtonDarkGrey:
            _topColor = [UIColor colorWithRed:0.525490 green:0.525490 blue:0.525490 alpha:1];
            _bottomColor=[UIColor colorWithRed:0.262745 green:0.258824 blue:0.262745 alpha:1];
            _borderColor = [UIColor colorWithRed:0.117647 green:0.117647 blue:0.117647 alpha:1];
            _inneColor = nil;
            break;
        case ACPButtonPurple:
            _topColor = [UIColor colorWithRed:0.807843 green:0.552941 blue:0.929412 alpha:1];
            _bottomColor=[UIColor colorWithRed:0.603922 green:0.368627 blue:0.784314 alpha:1];
            _borderColor = [UIColor colorWithRed:0.364706 green:0.168627 blue:0.541176 alpha:1];
            _inneColor = nil;
            break;
            
        default:
            break;
    }
    
    self.buttonRadius = 5;
    [self setTextStyle];
    
}

- (void) setFlatStyleType:(ACPButtonType)style {
    
    [self setStyleType:style];
    
    _isFlat = YES;
    self.buttonRadius = 0;
    [self setTextStyle];
    
    
}

- (void) setFlatStyle:(UIColor*)normal andHighlightedColor:(UIColor*)highlighted {
    
    [self setStyle:normal andBottomColor:highlighted];

    _isFlat = YES;
    self.buttonRadius = 0;
    [self setTextStyle];
    
    
}


- (void) setStyle:(UIColor*)topColor andBottomColor:(UIColor*)bottomColor {
    
    _isFlat = NO;
    _topColor = topColor;
    _bottomColor = bottomColor;
    if(!_bottomColor)
        _bottomColor = topColor;
    
    [self setNeedsDisplay];
    [self setTextStyle];
    
}



- (void) setBorderStyle:(UIColor*)borderColor andInnerColor:(UIColor*)innerColor {
    
    _borderColor = borderColor;
    _inneColor = innerColor;
    [self setNeedsDisplay];
    
}


- (void) setCornerRadius:(NSInteger)value {
    
    self.buttonRadius = value;
    
}

- (void)setHighlighted:(BOOL)highlighted
{
	[self setNeedsDisplay];
	[super setHighlighted:highlighted];
}

# pragma mark -
# pragma mark Set up the button with a image
# pragma mark -

- (void)setStyleWithImage:(NSString*)image highlightedImage:(NSString*)hImage disableImage:(NSString*)dImage andInsets:(UIEdgeInsets)insets {
    
    // Define resizable images
    UIImage *resizableButton = [[UIImage imageNamed:image] resizableImageWithCapInsets:insets];
    UIImage *resizableButtonHighlighted = [[UIImage imageNamed:hImage] resizableImageWithCapInsets:insets];
    UIImage *resizableButtonDisabled = [[UIImage imageNamed:dImage] resizableImageWithCapInsets:insets];
    
    // Set resizable background image
    [self setBackgroundImage:resizableButton forState:UIControlStateNormal];
    [self setBackgroundImage:resizableButtonHighlighted forState:UIControlStateHighlighted];
    [self setBackgroundImage:resizableButtonDisabled forState:UIControlStateDisabled];
    
    [self setTextStyle];
    

    
    _topColor=nil;
    _borderColor=nil;
    _inneColor = nil;
    _bottomColor = nil;
    
}


# pragma mark -
# pragma mark Set up the button text
# pragma mark -


- (void) setTextStyle {
    
    /*--------------------------------------------------------------------------
        By default
    --------------------------------------------------------------------------*/
    
    [self.titleLabel setFont:kLabelFont];
    
    [self.titleLabel setShadowOffset:kShadowOffset];
    
    [self setTitleShadowColor:kColorShadowNormal forState:UIControlStateNormal];
    [self setTitleColor:kColorFontNormal forState:UIControlStateNormal];
    
    [self setTitleShadowColor:kColorShadowHighlighted forState:UIControlStateHighlighted];
    [self setTitleColor:kColorFontHighlighted forState:UIControlStateHighlighted];
    
    [self setTitleShadowColor:kColorShadowDisable forState:UIControlStateDisabled];
    [self setTitleColor:kColorFontDisable forState:UIControlStateDisabled];
    
}

/*--------------------------------------------------------------------------
      Define the color of the label for every state
--------------------------------------------------------------------------*/
- (void) setLabelTextColor:(UIColor*)nColor highlightedColor:(UIColor*)hColor disableColor:(UIColor*)dColor{
    [self setTitleColor:nColor forState:UIControlStateNormal];
    [self setTitleColor:hColor forState:UIControlStateHighlighted];
    [self setTitleColor:dColor forState:UIControlStateDisabled];
}

/*--------------------------------------------------------------------------
      Define the color of the text shadow
 --------------------------------------------------------------------------*/
- (void) setLabelTextShadow:(CGSize)shadowOffSet normalColor:(UIColor*)nColor highlightedColor:(UIColor*)hColor disableColor:(UIColor*)dColor{
    
    [self.titleLabel setShadowOffset:shadowOffSet];
    [self setTitleShadowColor:nColor forState:UIControlStateNormal];
    [self setTitleShadowColor:hColor forState:UIControlStateHighlighted];
    [self setTitleShadowColor:dColor forState:UIControlStateDisabled];
    
}


- (void) setLabelFont:(UIFont*)font {
    
    /*--------------------------------------------------------------------------
        If you want to change the font by default, change the macro on top of
        this class.
    --------------------------------------------------------------------------*/
    
    [self.titleLabel setFont:font];
    
}



# pragma mark -
# pragma mark Draw rect overrides
# pragma mark -

- (void)drawRect:(CGRect)rect
{
    // General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIBezierPath *roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) cornerRadius: self.buttonRadius];
    // Use the bezier as a clipping path
    [roundedRectanglePath addClip];
    
    if(!_isFlat){
        
        if (_topColor){
            
            
            // Color Declarations
            
            UIColor *topColor = _topColor;
            UIColor *bottomColor =_bottomColor;
            
            
            // Gradient Declarations
            
            
            
            NSArray *gradientColors = (@[
                                       (id)_topColor.CGColor,
                                       (id)_bottomColor.CGColor
                                       ]);
            
            CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)(gradientColors), NULL);
            
            NSArray *highlightedGradientColors = (@[
                                                  (id)bottomColor.CGColor,
                                                  (id)topColor.CGColor
                                                  ]);
            
            CGGradientRef highlightedGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)(highlightedGradientColors), NULL);
            
            
            // Draw rounded rectangle bezier path
            
            
            // Use one of the two gradients depending on the state of the button
            CGGradientRef background = self.highlighted? highlightedGradient : gradient;
            
            // Draw gradient within the path
            CGContextDrawLinearGradient(context, background, CGPointMake(140, 0), CGPointMake(140, self.frame.size.height), 0);
            
            //Release the gradient
            CGGradientRelease(gradient);
            CGGradientRelease(highlightedGradient);
            
        }
        
    } else
    {
        
        //Solid colors
        CGColorRef colorRef =  self.highlighted? _topColor.CGColor : _bottomColor.CGColor;
        
        CGContextSetFillColor(context, CGColorGetComponents(colorRef));
        CGContextFillRect(context, rect);
        
        
    }
    // Draw border
    
    if(_borderColor){
        [_borderColor setStroke];
        roundedRectanglePath.lineWidth = 2;
        [roundedRectanglePath stroke];
    }
    // Draw Inner Glow
    if(_inneColor){
        UIBezierPath *innerGlowRect = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(1.5, 1.5, self.frame.size.width-2, self.frame.size.height-2) cornerRadius: 0];
        [_inneColor setStroke];
        innerGlowRect.lineWidth = 1;
        [innerGlowRect stroke];
    }
    // Cleanup
    CGColorSpaceRelease(colorSpace);
    
}

@end
