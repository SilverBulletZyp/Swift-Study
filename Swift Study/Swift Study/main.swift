//
//  main.swift
//  Swift Study
//
//  Created by zhaoyunpeng on 16/9/28.
//  Copyright © 2016年 zhaoyunpeng. All rights reserved.
//

import Foundation


// print("Hello, Swift")



/** 常量变量声明与实现 */

print("/** 常量变量声明与实现 */")


var str = "wtf with Swift"
print(str)

let num = 1+2
print("1 + 2 =",num)

var 年龄 = 30
print(年龄)

var name = "我"
var url = "http://silverBulletZyp.github.io"
print("\(name)的博客地址是\(url)")





/** 字面量 */

print("\n")
print("/** 字面量 */")


// 整型字面量
let decimalInteger = 17           // 17 - 十进制表示
let binaryInteger = 0b10001       // 17 - 二进制表示
let octalInteger = 0o21           // 17 - 八进制表示
let hexadecimalInteger = 0x11     // 17 - 十六进制表示

// 浮点型字面量
let decimalDouble = 12.1875       //十进制浮点型字面量
let exponentDouble = 1.21875e1    //十进制浮点型字面量
let hexadecimalDouble = 0xC.3p0   //十六进制浮点型字面量

// 字符串型字面量
let stringS = "|Hello\t|Swift\n|我的博客\t|\'http://silverBulletZyp.github.io\'"
print(stringS) // 转义字符详见http://www.runoob.com/swift/swift-literals.html

// 布尔型字面量
let stringBool = "true:真;false:假;nil:空"






/** 运算符 */

print("\n")
print("/** 运算符 */")


// 运算符大致相同，深入理解详见http://www.runoob.com/swift/swift-operators.html
// 这里主要列举区间运算符
print("闭区间运算符")
for index in 1...3
{
    print("\(index) * 3 = \(index * 3)")
}
print("开区间运算符")
for index in 1..<3
{
    print("\(index) * 3 = \(index * 3)")
}






/** 条件与循环语句 */

print("\n")
print("/** 条件与循环语句 */")


// switch 语句
print("switch语句")
var switchNum = 10
switch switchNum {
    case 10 :
        print("switchNum值为\(switchNum)")
        fallthrough // switch默认break，若需要继续运行下面的case，则添加fallthrough
    case 100 :
        print("switchNum值为100")
    default :
        print("switchNum默认case")
}
// 循环语句见http://www.runoob.com/swift/swift-loops.html






/** 类型别名 */

print("\n")
print("/** 类型别名 */")


typealias IntType = Int
var height:IntType = 175
print("我的身高为",height);



/** optionals可选类型 */

print("\n")
print("/** optionals可选类型 */")


var optionalsInt:Int?  // ?表示有int值或无值
var optionalsInteger:Optional<Int>
optionalsInt = 40
print("optionals可选类型实例为\(optionalsInt);值为\(optionalsInt!)")

var optionalsString1:String? = "可选类型实例强制解析"
var optionalsString2:String! = "可选类型实例自动解析"
if optionalsString1 != nil
{
    // !强制解析实例值必须非空，否则报错
    print(optionalsString1!)
}
else if optionalsString2 != nil
{
    // 自动解析
    print(optionalsString2)
}
else if let optionalsTempInt = optionalsInt
{
    // 可选绑定
    print("有值则赋值给临时常量或变量 - \(optionalsTempInt)")
}
else
{
    // 若两值都为空，输出nil
    print(optionalsString1)
}



/** 字符串 */

print("\n")
print("/** 字符串 */")


var stringA = "A" // 字符串字面量
print(stringA)

var stringB = String("B") // 字符串实例化
print(stringB)
print("A+B=",stringA + stringB!)
print(stringA,stringB!,(stringA+stringB!).characters.count)

// 字面量创建空字符串
var stringC = ""
if stringC.isEmpty
{
    print("空C")
}


// 实例化String类创建空字符串
let stringD = String()
if stringD.isEmpty
{
    print("空D")
}

// 字符串比较
if stringA == stringB
{
    print("AB相等")
}

print("\n")
// Unicode字符串
var unicodeString = "Unicode字符串"
print("Unicode字符串")
print("UTF-8编码")
for code in unicodeString.utf8{
    print("\(code)")
}
print("\n")
print("UTF-16编码")
for code in unicodeString.utf16{
    print("\(code)")
}



print("\n")
print("/** end */")
