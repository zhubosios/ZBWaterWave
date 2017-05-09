# 这是一个水纹波动效果的自定义视图
![封面效果图](https://raw.githubusercontent.com/zhubosios/ZBWaterView/13c0ff0f64b7032a9e3ff3321b3894c9f41709d3/ZBwaterWaveDemo/ZBwaterWaveDemo/2017-05-02%2017_15_17.gif)

##Installation
`pod 'ZBWaterWave'`

##Debugging
```Objective-C
@property (nonatomic, assign) CGFloat waveSpeed;
@property (nonatomic, assign) CGFloat waveAmplitude;
@property (nonatomic, strong) UIColor   *waveColor;

- (void)wave;
- (void)stop;
```
