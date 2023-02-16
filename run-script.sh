#! /bin/zsh

gnome-terminal --tab --title='mongo db' -e 'mongod --dbpath=/home/abhinav/data/db'

sleep 6

gnome-terminal --tab --title='node server' --working-directory="/home/abhinav/Tars/Development/tars-admin-dashboard" -e 'npm run nodemon' --tab --title="chatbot/whatsapp server" --working-directory="/home/abhinav/Tars/Development/tars-chatbot" -e 'npm run dev' --tab --title="new chatbot frontend" --working-directory="/home/abhinav/Tars/Development/tars-chatbot/frontend" -e 'npm run dev' --tab --title='old chatbot frontend' --working-directory="/home/abhinav/Tars/Development/tars-chatbot-frontend" -e 'npm start' --tab --title='python' --working-directory="/home/abhinav/Tars/Development/tars-admin-dashboard/app/workers/robohash" -e 'python webfront.py' --tab --title='dashboard frontend' --working-directory="/home/abhinav/Tars/Development/tars-admin-dashboard" -- /bin/zsh -c 'sudo -S <<< "********" iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080; npm run dev;'


# gnome-terminal --tab --title='mongod' -- mongod 

# gnome-terminal --tab --title='python' --working-directory="/home/kali/Tars/Development/tars-admin-dashboard"/app/workers/robohash -- python webfront.py
 
# sleep 3
# gnome-terminal --tab --title='node server' --working-directory="/home/kali/Tars/Development/tars-admin-dashboard" -- npm start

# gnome-terminal --tab --title='chatbot frontend' --working-directory="/home/kali/Tars/Development/tars-chatbot-frontend" -- npm start

# gnome-terminal  --tab --title='node client' --working-directory="/home/kali/Tars/Development/tars-admin-dashboard" -- /bin/zsh -c 'export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"; sudo -S <<< "********" iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080; nvm use 14.15.4; code .; npm run dev;'

