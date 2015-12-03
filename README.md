# Hacker Scripts

Based on a _[true
story](https://www.jitbit.com/alexblog/249-now-thats-what-i-call-a-hacker/)_:

> xxx: OK, so, our build engineer has left for another company. The dude was literally living inside the terminal. You know, that type of a guy who loves Vim, creates diagrams in Dot and writes wiki-posts in Markdown... If something - anything - requires more than 90 seconds of his time, he writes a script to automate that.

> xxx: So we're sitting here, looking through his, uhm, "legacy"

> xxx: You're gonna love this

> xxx: [`smack-my-bitch-up.sh`](https://github.com/NARKOZ/hacker-scripts/blob/master/smack-my-bitch-up.sh) - sends a text message "late at work" to his wife (apparently). Automatically picks reasons from an array of strings, randomly. Runs inside a cron-job. The job fires if there are active SSH-sessions on the server after 9pm with his login.

EDIT
-----

Sends message to wife

## Cron jobs

```sh
# Runs `smack-my-bitch-up.sh` daily at 9:20 pm.
20 21 * * * /path/to/scripts/smack-my-bitch-up.sh >> /path/to/smack-my-bitch-up.log 2>&1

---
Code is released under WTFPL.
