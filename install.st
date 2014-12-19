| log |

log := [:msg | | str |
    str := ' ---> ', msg.
    FileStream stdout nextPutAll: str; nextPut: Character lf; flush.
    Transcript cr; show: str].

log value: 'Installing OSProcess'.
Installer ss
    project: 'OSProcess';
    install: 'OSProcess-dtl.73'.


!MCVersionInfo methodsFor: 'accessing'!
date
    ^ date.! !
!MCVersionInfo methodsFor: 'accessing'!
time
    ^ time.! !

| log |

log := [:msg | | str |
    str := ' ---> ', msg.
    FileStream stdout nextPutAll: str; nextPut: Character lf; flush.
    Transcript cr; show: str].

log value: 'Installing SWA Utilities'.
(Installer monticello http: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities')
    addPackage: 'Icons';
    install.



log value: 'Done'.!







Smalltalk snapshot: true andQuit: true.
