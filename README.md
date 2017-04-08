This reproduces a bug I'm having with Hourglass on Raspberry Pi.

It works correctly on x86-64 Ubuntu:

    output of 'uname -a'
    Linux patrick64 4.4.0-21-generic #37-Ubuntu SMP Mon Apr 18 18:33:37 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
    output of 'date'
    Sat Apr  8 15:18:30 PDT 2017
    timeCurrent with hourglass-0.2.10
    Apr 08 2017 22:18:30  +00:00
    dateCurrent with hourglass-0.2.10
    Apr 08 2017 22:18:30  +00:00
    localDateCurrent with hourglass-0.2.10
    Apr 08 2017 14:18:30  -08:00
    timezoneCurrent with hourglass-0.2.10
    -0800

And it works correctly on x86-64 Mac OS X:

    output of 'uname -a'
    Darwin whiteandnerdy.lan 13.4.0 Darwin Kernel Version 13.4.0: Mon Jan 11 18:17:34 PST 2016; root:xnu-2422.115.15~1/RELEASE_X86_64 x86_64
    output of 'date'
    Sat Apr  8 15:14:49 PDT 2017
    timeCurrent with hourglass-0.2.10
    Apr 08 2017 22:14:49  +00:00
    dateCurrent with hourglass-0.2.10
    Apr 08 2017 22:14:49  +00:00
    localDateCurrent with hourglass-0.2.10
    Apr 08 2017 14:14:49  -08:00
    timezoneCurrent with hourglass-0.2.10
    -0800

But the time zone offset seems to be very wrong on Raspbian:

    output of 'uname -a'
    Linux xmaslites 4.4.34+ #930 Wed Nov 23 15:12:30 GMT 2016 armv6l GNU/Linux
    output of 'date'
    Sat  8 Apr 15:08:05 PDT 2017
    timeCurrent with hourglass-0.2.10
    Apr 08 2017 22:08:05  +00:00
    dateCurrent with hourglass-0.2.10
    Apr 08 2017 22:08:05  +00:00
    localDateCurrent with hourglass-0.2.10
    May 24 2018 17:33:05  +59:25
    timezoneCurrent with hourglass-0.2.10
    +5925

And the time zone offset seems to change each time it's run:

    output of 'uname -a'
    Linux xmaslites 4.4.34+ #930 Wed Nov 23 15:12:30 GMT 2016 armv6l GNU/Linux
    output of 'date'
    Sat  8 Apr 15:24:04 PDT 2017
    timeCurrent with hourglass-0.2.10
    Apr 08 2017 22:24:04  +00:00
    dateCurrent with hourglass-0.2.10
    Apr 08 2017 22:24:04  +00:00
    localDateCurrent with hourglass-0.2.10
    Jul 11 2017 08:23:04  +41:59
    timezoneCurrent with hourglass-0.2.10
    +4159
