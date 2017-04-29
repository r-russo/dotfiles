#!/usr/bin/env python

import imaplib, os

usuarios = [
    ['rodrigo.e.russo', '4714160+'],
    ['norberto.m.russo', '4714160+'],
    ['magicrusso', 'beethovenMAHLERdvorak']
    ]

n = []
for u in usuarios:
    imap = imaplib.IMAP4_SSL('imap.gmail.com', 993)
    imap.login(u[0], u[1])
    imap.select('INBOX')

    status, response = imap.status('INBOX', '(UNSEEN)')
    n.append(int(response[0].split()[2][0:-1]))

    imap.close()
    imap.logout()

color = []
icon = []
for i in n:
    if i > 0:
        color.append("%{F$YELLOW}")
        icon.append("%{T2}%{T-}")
    else:
        color.append("%{F$GREEN}")
        icon.append("%{T2}%{T-}")
        
mail_cmd = "geary &"
lemon_out = "%{A1:" + mail_cmd + ":}"
for i in range(len(n)):
    if i != 0:
        lemon_out += " "
    lemon_out += color[i] + icon[i] + " " + str(n[i])
lemon_out += "%{F-}%{A}"

wdir = os.path.dirname(os.path.realpath(__file__))
with open(wdir + '/gmail_notifications', 'w') as f:
    f.write(lemon_out)
