# GearController

## Notification
* 当前版本的是直接照抄paper上的设计的，直接经过simulator的测试的话是会出现deadlock的。
* 基本的变量的命名都是完全按照paper上的设计图来实现的，除了gearControl template那里的c:*开头的变量，如c:Initial, c:ReqSyncSpeed等，由于Uppaal的变量命名原理，所以被我改成的C\*形式，即CInitial, CReqSyncSpeed等变量名。
