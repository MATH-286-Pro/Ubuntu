# ROS-META-RM

## Github 地址
- https://github.com/Meta-Team/Meta-ROS

## 安装步骤

### 环境 Dependencies
- [ ] ros2-humble
- [ ] serial-driver
- [ ] moveit
- [ ] moveit-servo
- [ ] camera-info-manager

## 日志
- **2024.9.16 周一**
  - cd Document/
  - wget http://fishros.com/install -O fishros && . fishros
  - 11 (选择 Docker 版本 ROS-2-Humble)
  - ROS2-META (容器名称)
  - 1 (选择安装 VSCode + 插件)
  - sudo docker ps (查看是否安装成功)
    ```
      CONTAINER ID   IMAGE                              COMMAND       CREATED         STATUS         PORTS     NAMES
      3280825d7c18   fishros2/ros:humble-desktop-full   "/bin/bash"   5 minutes ago   Up 5 minutes             ROS2-META
    ```
  - sudo docker exec -it ROS2-META /bin/bash (进入ROS2-META容器)
  - cd Documents/
  - mkdir -p meta_ws/src && cd meta_ws/src (在当前目录 创建文件夹)
  - git clone --recurse-submodules https://github.com/Meta-Team/Meta-ROS (克隆 ROS-META Github 仓库)
  - rosdep --version (检查是否有 rosdep)
  - sudo rosdep init (初始化 rosdep)
  - rosdep update (更新 rosdep)
  - git clone https://github.com/ros-controls/ros2_control_demos.git (缺少[ros2_control_demo_description])
  - git clone https://github.com/gazebosim/gz_ros2_control.git (缺少[gz_ros2_control])
  - gazebo --version (查看 Gazebo 是否安装)
  - rosdep install --from-paths src --ignore-src --skip-keys=gz_ros2_control








