# Hacker Scripts

Based on a _[truestory](https://www.jitbit.com/alexblog/249-now-thats-what-i-call-a-hacker/)_:


> xxx: [`smack-my-bitch-up.sh`](https://github.com/NARKOZ/hacker-scripts/blob/master/smack-my-bitch-up.sh) - sends a text message "late at work" to his wife (apparently). Automatically picks reasons from an array of strings, randomly. Runs inside a cron-job. The job fires if there are active SSH-sessions on the server after 9pm with his login.



Modified smack-my-bitch-up.sh to inform-my-wife.sh


Sends SMS to wife if you are going to be late from office. Just add a cron job to run inform-my-wife.sh daily at a specific time (say 1900 hrs)

## Cron job in Mac

crontab -l

# Runs `inform-my-wife.sh` daily at 1901 hrs.
1	19	*	*	*	inform-my-wife.sh
