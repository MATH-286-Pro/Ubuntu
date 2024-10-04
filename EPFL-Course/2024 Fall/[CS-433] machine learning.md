# [CS-433] Machine learning

## 成绩构成
- **10% Project 1 (11.1 截止)**
  - 3 人一组
  - Python 代码
  - 2 页 Report
- **30% Project 2 (12.19 截止)**
  - 3 人一组
  - Python 代码
  - 4 页 Report
- **60% Fina Exam**
  - 闭卷考试
  - 可带一张 cheatsheet 双面A4
  - 橡皮 + 铅笔


## 课程文件
- [Github 课程主页](https://github.com/epfml/ML_course/tree/main)
- [Github 课程链接 课件](https://github.com/epfml/ML_course/tree/main/lectures)  
- [EPFL 课程链接 包含课件 计划](https://www.epfl.ch/labs/mlo/machine-learning-cs-433/)
- [EPFL 视频链接](https://mediaspace.epfl.ch/channel/CS-433+Machine+learning/55647)


## 课程内容
- Basic regression and classification concepts 
- Fundamental concepts 
- Neural networks
- Unsupervised and self-supervised learning
- Representation learning and dimensionality reduction


## 课程记录
- **Lecture 1.1 2024.9.10**
  - **lecture01a_intro.pdf**
  - **lecture01b_regression.pdf**
    - Regression 回归
      - 用于将输入与输出产生关联
      - D = dimensionality
      - N = data size
      - 相关性 ≠ 因果性 [神奇关系小网站](https://tylervigen.com/spurious-correlations)
- **Lecture 1.2 2024.9.11**
  - **lecture01c_linear_regression.pdf**
    - Linear regression 线性回归
      - 假设输入输出是线性相关的
    - Univariable linear regression 单变量线性回归
    - Multivariable linear regression 多变量线性回归
      - Overparameterization - or the D>N issue
  - **lecture01d_loss_functions.pdf**
    - Loss/Cost function 损失函数
    - [小网站](https://lossfunctions.tumblr.com/)
- **Lecture 2.1 2024.9.17 周二**
  - **lecture02a_optimization.pdf**
    - 局部极值 全局极值
    - MatrixCalculus.org
    - 梯度下降
    - 随机梯度下降 算法 SDG


## 课程项目 (列表)
- **Project 1 (10%) 项目地址 [AICrowd](https://www.aicrowd.com/challenges/epfl-machine-learning-project-1)**
  - **Code 代码**
    - 需要加入 [学生Github](https://github.com/login?client_id=Iv1.a84bfcae38835499&return_to=%2Flogin%2Foauth%2Fauthorize%3Fclient_id%3DIv1.a84bfcae38835499%26redirect_uri%3Dhttps%253A%252F%252Fclassroom.github.com%252Fauth%252Fgithub%252Fcallback%26response_type%3Dcode%26state%3D004e66cf8ed25e9615d07959629e08cdf6a53489a65dad92)
    - Python 标准库
    - Numpy
    - matplotlib, seaborn (可视化工具)
    - 不允许使用外部库例如 scikit-learn Pandas PyTorch TensorFlow
  - **Report 报告**
    - LaTeX 2 页报告
  - **Competitive Part 比赛**
    - aicrowd.com
  - **项目步骤**
    1. 使用 EPFL 邮箱注册账号
    2. 下载 training datasheet
       - x train.csv
       - y train.csv
       - x test.csv
- **Project 2 (30%)**
