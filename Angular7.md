# Angular 7

If you cannot see the "ng serve" command running, then you can do the following on Mac OSX (This should work on any Linux and Uni software as well).

`ps -ef | grep "ng serve"`

From this, find out the PID of the process and then kill it with the following command.

`kill -9 <PID>`