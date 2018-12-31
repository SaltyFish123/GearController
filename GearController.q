//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

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
//NO_QUERY

/*

*/
A[] E.ErrorSpeed imply ErrStat!=0

/*

*/
A[] E.Torque imply C.Closed

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
//NO_QUERY

/*

*/
A[] not deadlock

/*

*/
A[] ErrStat==0 or not deadlock
