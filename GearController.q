//This file was generated from (Academic) UPPAAL 4.1.13 (rev. 5160), November 2012

/*

*/
inf{((ErrStat==0 && UseCase==0) and GC.CGearChanged)}:SysTimer

/*

*/
sup{((ErrStat==0 && UseCase==0) and GC.CGearChanged)}:SysTimer

/*

*/
GC.CInitiate --> (((ErrStat==0 && UseCase==0) imply GC.CGearChanged) and SysTimer <=1000)

/*

*/
A[] (ErrStat == 0 && UseCase == 0 && GCInitial) imply SysTimer <= 1000

/*

*/
//Pro 2

/*

*/
//NO_QUERY

/*

*/
inf{(ErrStat==0 and GC.CGearChanged)}:SysTimer

/*

*/
sup{(ErrStat==0 and GC.CGearChanged)}:SysTimer

/*

*/
GC.CInitiate --> ((ErrStat==0 imply GC.CGearChanged) and SysTimer <=1500)

/*

*/
A[] (ErrStat == 0 && GCInitial) imply SysTimer <= 1500

/*

*/
//Pro 1

/*

*/
//NO_QUERY

/*

*/
inf{GBErrNeu}:GBErrNeuClock

/*

*/
sup{GBErrNeu}:GBErrNeuClock

/*

*/
A[] GBErrNeu imply GBErrNeuClock<=200

/*

*/
//Pro 6

/*

*/
//NO_QUERY

/*

*/
inf{GBErrIdle}:GBErrIdleClock

/*

*/
sup{GBErrIdle}:GBErrIdleClock

/*

*/
A[] GBErrIdle imply GBErrIdleClock<=350

/*

*/
//Pro5

/*

*/
//NO_QUERY

/*

*/
inf{CErrOpen}:CErrOpenClock

/*

*/
sup{CErrOpen}:CErrOpenClock

/*

*/
A[] CErrOpen imply CErrOpenClock<=200

/*

*/
//Pro 4

/*

*/
//NO_QUERY

/*

*/
inf{CErrClose}:CErrCloseClock

/*

*/
sup{CErrClose}:CErrCloseClock

/*

*/
A[] CErrClose imply CErrCloseClock<=200

/*

*/
//Pro 3

/*

*/
//NO_QUERY

/*

*/
A[] GC.CCloseError imply C.ErrorClose

/*

*/
A[] GC.COpenError imply C.ErrorOpen

/*

*/
A[] GC.GSetError imply GB.ErrorIdle

/*

*/
A[] GC.GNeuError imply GB.ErrorNeu

/*

*/
//Pro 7 ~ 10

/*

*/
//NO_QUERY

/*

*/
A[] E.ErrorSpeed imply ErrStat!=0

/*

*/
A[] E.Torque imply C.Closed

/*

*/
//Pro 11 ~ 12

/*

*/
//NO_QUERY

/*

*/
E<> I.GearN

/*

*/
E<> I.Gear1

/*

*/
E<> I.Gear2

/*

*/
E<> I.Gear3

/*

*/
E<> I.Gear4

/*

*/
E<> I.Gear5

/*

*/
E<> I.GearR

/*

*/
//Pro 13

/*

*/
//NO_QUERY

/*

*/
A[] (GC.Gear and I.Gear1) imply E.Torque

/*

*/
A[] (GC.Gear and I.Gear2) imply E.Torque

/*

*/
A[] (GC.Gear and I.Gear3) imply E.Torque

/*

*/
A[] (GC.Gear and I.Gear4) imply E.Torque

/*

*/
A[] (GC.Gear and I.Gear5) imply E.Torque

/*

*/
A[] (GC.Gear and I.GearR) imply E.Torque

/*

*/
//Pro 14

/*

*/
//NO_QUERY

/*

*/
A[] (ErrStat == 0 && UseCase == 0 && GCInitial) imply SysTimer <= 900

/*

*/
//Pro 15

/*

*/
A[] (ErrStat == 0 && UseCase == 0 && GCInitial) imply SysTimer <= 899

/*

*/
//Pro16

/*

*/
//NO_QUERY

/*

*/
A[] not deadlock

/*

*/
A[] deadlock imply ErrStat!=0\


/*

*/
A[] ErrStat !=0 or not deadlock
