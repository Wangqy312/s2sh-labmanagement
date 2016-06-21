# labmanagement  v0.1 s2sh
这是一个基于Struts2、hibernate、spring三大框架搭建起来的实验室平台管理系统，在这个平台上，只有在总数据库中的学生群体才可以注册该系统的账号。利用本系统的账号登陆之后，可以查看实验室预约情况，并且可以自己预约自己想要的时间段的实验房间，并且可以取消预约。其中还可以查询其他成员的基本信息，可交流。

本系统还提供了安全密码修改和安全邮箱的修改，可以实现利用安全邮箱找回密码的功能。

项目特点：
1、struts2,hibernate,spring构建项目后台实现MVC
2、人员信息存储在MySQL数据库中,通过hibernate完成和持久层的交互
3、EasyUI和JQuery做前台页面的简单搭建
4、实现了javax.mail发送安全邮件修改密码


下图是登陆主界面：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/1.jpg)

下图是登录成功，管理系统操作主界面：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/2.jpg)

下图是预约的界面展示：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/3.jpg)
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/4.jpg)

下图是全员信息的展示，可以实现各种方式的搜索以及分页显示：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/5.jpg)

下图是注册界面：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/7.jpg)
当满足注册条件时，即正确填写学号身份证信息即可以注册

下图是密码找回界面：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/8.jpg)
如果一个账号设置过了密码找回，则通过此页面可以跳转到邮箱输入界面，进而可以进入已经设置的安全邮箱点击其中的链接进行密码的重置


该项目的正确运行还需要数据库的支持。需要labmanagement的mysql数据库，需要的数据表为：
1、全员信息数据表 student2015
2、管理系统注册成员数据表 studentaccount
3、每一个实验室lab对应一个存储其预约状态的labxxx表
4、存储安全邮箱设置与否的表 secureemail，并与studentaccount表有外键关联
5、每次注册成功会自动生成一个reserveInfoxxx表

将整套程序拷贝至Tomcat的webapps目录下启动tomcat，同时在正确配置数据库的情况下，输入http://152j1383d8.imwork.net/MavenS2SH/
即可访问（注册了一个简单域名）




