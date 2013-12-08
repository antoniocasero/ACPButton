# ACPButton

This extension of UIButton allow you to have full control of your project buttons from one class. This class give you the oportunity to create buttons completly image free, combining flat color, gradients, borders etc. You also can create easily buttons using resizable images.

![](Screenshot1.png)


## Instalation

### From [CocoaPods][1]

	pod `ACPButton`

### From source

Clone the repository

[*$ git clone git@github.com:antoniocasero/ACPButton.git*]()

Or just drag this class to your project and import `ACPButton` to your viewcontroller.


## Implementing

In the storyboard or XIB file, select your button and change the button class to ACPButton 

![](Screenshot2.png)

Then, on viewDidLoad you can set up the button depending of yor needs,

* ```- (void) setStyleType:(ACPButtonType)style;```
* `- (void) setFlatStyleType:(ACPButtonType)style;`
* `- (void) setFlatStyle:(UIColor*)normal andHighlightedColor:(UIColor*)highlight;`
* `- (void) setStyle:(UIColor*)topColor andBottomColor:(UIColor*)bottomColor;`
* `- (void) setStyleWithImage:(NSString*)image highlightedImage:(NSString*)hImage disableImage:(NSString *)dImage andInsets:(UIEdgeInsets)insets;`
* ```- (void) setGlowHighlightedState:(BOOL)glowOption;```


## Compatibility

- Supports ARC. If you want to use it in a project without ARC, mark ACPButton.m with the linker flag-fobjc-arc.
- Compatible with iOS5+.

## License

`ACPButton` is available under the MIT license. See the LICENSE file for more info.



















[1]:	http://www.cocoapods.org

[1]:	Screenshot1.png
[2]:	Screenshot2.png


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/antoniocasero/ACPButton/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

