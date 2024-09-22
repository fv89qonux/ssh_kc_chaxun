## 本项目实现的最终作用是基于SSH在线课程查询管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改密码和个人资料
 - 学生管理
 - 教师管理
 - 管理员用户用户
 - 管理员登录
 - 课程管理
### 第2个角色为学生角色，实现了如下功能：
 - 修改信息和密码
 - 学生登录注册
 - 学生管理
 - 教师查询
 - 课程管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_kc_chaxun

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_kecheng](#t_kecheng) |  |
| [t_studentfile](#t_studentfile) |  |
| [t_teacher](#t_teacher) | 教师信息表 |
| [t_user](#t_user) | 用户表 |

**表名：** <a id="t_kecheng">t_kecheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | t_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | t_content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | t_xiaoguo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 效果  |
|  5   | t_info |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注信息  |
|  6   | teacher_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_studentfile">t_studentfile</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | f_uploadName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名称  |
|  3   | f_fileName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 上传文件名  |
|  4   | f_uploadTime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 上传时间  |
|  5   | t_id |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  6   | t_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  7   | t_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  8   | t_address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  9   | t_birth |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | t_info |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注信息  |
|  11   | user_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="t_teacher">t_teacher</a>

**说明：** 教师信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | t_id |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  3   | t_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  4   | t_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  5   | t_address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  6   | t_tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | t_info |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注信息  |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | u_username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | u_password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | u_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | u_birthday |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 生日  |
|  6   | u_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  7   | u_tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  8   | u_lxr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系人  |
|  9   | u_phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | u_jg |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 籍贯  |
|  11   | u_address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 家庭地址  |
|  12   | u_bm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | u_type |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  14   | u_by_1 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备用字段1  |
|  15   | u_by_2 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备用字段2  |
|  16   | u_by_3 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备用字段3  |
|  17   | u_bz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 个人信息备注  |

