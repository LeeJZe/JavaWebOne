/*
JavaBean开发要求

JavaBean本身就是一个类，属于Java的面向对象编程。

在JSP中如果要应用JSP提供的Javabean的标签来操作简单类的话，则此类必须满足如下的开发要求。

1）：所有的类必须放在一个包中，在WEB中没有包的类是不存在的；

2）：所有的类必须声明为public class，这样才能够被外部所访问；

3）：类中所有的属性都必须封装，即：使用private声明；

4）：封装的属性如果需要被外部所操作，则必须编写相应的setter、getter方法。

5）：一个JavaBean中至少存在一个无参的构造方法，此为JSP中的标签所使用。
 */
package com.demo;

public class TestBean {

    private String name;
    private String age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }
}
