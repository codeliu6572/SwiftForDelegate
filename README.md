# SwiftForDelegate

代理的使用

1.写协议：

```
protocol MyDelegate {
    func didAcceptSomethiong(someoneName : String)
}
```

2.声明一个delegate

```
var delegate : MyDelegate?     //这里不需要用weak，‘？’可以起到相关作用
```


3.使用代理进行反向传值

```
点击屏幕跳转到ViewController1
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let view1 = ViewController1()
        view1.delegate = self   //设置代理
        self.present(view1, animated: true, completion: nil)
        
    }

```
4.触发代理方法的条件，点击屏幕返回上一界面触发

```
 override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        self.dismiss(animated: false, completion: nil)
        delegate?.didAcceptSomethiong(someoneName: "Hello")   //触发，在OC中是需要用到respondsToSelector方法来判断方法是否存在的，这里的‘？’起到了这样的作用，如果没有的话delegate就为nil

    }
```

5.在上层界面中使用代理来进行操作

```
  func didAcceptSomethiong(someoneName: String) {
        print(someoneName)
    }
```
