# ACPButton

This extension of UIButton allow you to have full control of your project buttons from one class. This class give you the options to create buttons completly image free, combining flat color, gradients, borders etc. You also can create easily buttons using resizable images.

![](Screen%20Shot%202013-07-16%20at%2011.59.36%20PM.png)

You can have all your project buttons, centralized in one class, so at the end you could see changes, modifying this class.

## Instalation

Clone the repository

[*$ git clone git@github.com:antoniocasero/ACPButton.git*]()

Or just drag this class to your project. 


## Implementing

In the storyboard or XIB file, select your button and change the button class to ACPButton 

![](Screen%20Shot%202013-07-16%20at%2011.05.16%20PM.png)

Then, on viewDidLoad we set up the button depending of yor needs,

`- (void) setStyleType:(ACPButtonType)style;`
`- (void) setFlatStyleType:(ACPButtonType)style;`
\`\`
`- (void) setFlatStyle:(UIColor*)normal andHighlightedColor:(UIColor*)highlight`
`- (void) setStyle:(UIColor*)topColor andBottomColor:(UIColor*)bottomColor;`

`- (void) setStyleWithImage:(NSString*)image highlightedImage:(NSString*)hImage disableImage:(NSString *)dImage andInsets:(UIEdgeInsets)insets;`


## Compatibility

- Supports ARC. If you want to use it in a project without ARC, mark ACPButton.m with the linker flag-fobjc-arc.
- Compatible with iOS5+.

## License

`ACPButton` is available under the MIT license. See the LICENSE file for more info.












[1]:	Screen%20Shot%202013-07-16%20at%2011.59.36%20PM.png
[2]:	Screen%20Shot%202013-07-16%20at%2011.05.16%20PM.png
