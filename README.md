# GearController

## Notification
* 当前版本的是直接照抄paper上的设计的，直接经过simulator的测试的话是会出现deadlock的。
* 基本的变量的命名都是完全按照paper上的设计图来实现的，除了gearControl template那里的c:*开头的变量，如c:Initial, c:ReqSyncSpeed等，由于Uppaal的变量命名原理，所以被我改成的C\*形式，即CInitial, CReqSyncSpeed等变量名。
* 更改了gearBox, clutch的到达error states的edge的guard条件。原本是 == 的都换成 > 了。因为如果不换的整个system验证时经常会进入error state，换了之后就不再发生这种情况了。
* 还有一些location添加了invariant来进行限制，不然无法正常地运行系统。


## Problem
* 主要疑惑有如何实现time bounded response的验证，应该以怎样的思路来思考与实现
* 如何避免系统陷入伪deadlock，目前版本经常会在还有路径可走的情况下停下来并反馈说出现了deadlock，具体用语句 **A[] not deadlock** 可以实现错误。
