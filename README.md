# labmanagement  v0.1 s2sh
这是一个基于Struts2、hibernate、spring三大框架搭建起来的实验室平台管理系统，在这个平台上，只有在总数据库中的学生群体才可以注册该系统的账号。利用本系统的账号登陆之后，可以查看实验室预约情况，并且可以自己预约自己想要的时间段的实验房间，并且可以取消预约。其中还可以查询其他成员的基本信息，可交流。

本系统还提供了安全密码修改和安全邮箱的修改，可以实现利用安全邮箱找回密码的功能。

项目特点：
1、struts2,hibernate,spring构建项目后台实现MVC
2、人员信息存储在MySQL数据库中,通过hibernate完成和持久层的交互
3、实现了javax.mail发送安全邮件修改密码


下图是登陆主界面：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/1.jpg)

下图是登录成功，管理系统操作主界面：
![image](https://raw.githubusercontent.com/Wangqy312/s2sh-labmanagement/master/raw/2.jpg)




