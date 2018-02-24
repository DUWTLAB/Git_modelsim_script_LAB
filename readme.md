
# 关于本参考设计

本文提供了一个简单电路的脚本仿真的参考设计。
用于示范如何使用ModelSim命令行的方式来进行仿真。


# 目录和代码文件

* 目录 ./hdlsrc ，HDL源代码
    + 文件 ./hdlsrc/dut.v   ，测试平台代码，生成激励信号，例化待测模块
    + 文件 ./hdlsrc/testbench.v  ， 待测模块，内部逻辑为加法器

* 目录 ./modelsim ， ModelSim工程目录
    + 文件 ./modelsim/build.do  ，HDL代码编译脚本
    + 文件 ./modelsim/compile.f ，HDL代码文件 列表文件 
    + 文件 ./modelsim/sim_quit.do， 退出仿真 脚本
    + 文件 ./modelsim/sim_run.do，  运行仿真 脚本

# 教程页面

请使用微信扫描以下二维码访问教程 “ModelSim 的脚本仿真流程 ”

![微信二维码](./wx_qr.png)

