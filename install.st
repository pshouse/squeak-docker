| log |

log := [:msg | | str |
    str := ' ---> ', msg.
    FileStream stdout nextPutAll: str; nextPut: Character lf; flush.
    Transcript cr; show: str].

log value: 'Installing OSProcess'.
Installer ss
    project: 'OSProcess';
    install: 'OSProcess-dtl.73'.





log value: 'Done'.!







Smalltalk snapshot: true andQuit: true.
