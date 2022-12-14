#!/bin/bash

read -p "⚡️ Enter type: " TYPE

if [ $TYPE ]; then
    if [ $TYPE == 'FIX' ]; then
        git add --all
        git commit -m "🛠️ Fix"
        git push -u origin main
        echo "⚡️ Task complete"
    fi

    if [ $TYPE == 'UPDATE' ]; then
        git add --all
        git commit -m "📦️ Update"
        git push -u origin main
        echo "⚡️ Task complete"
    fi

        if [ $TYPE == 'PROD' ]; then
        git add --all
        git commit -m "🌐 Production"
        git push -u origin main
        echo "⚡️ Task complete"
    fi

    if [ $TYPE == 'INIT' ]; then
        read -p "⚡️ Enter repositorie name: " NAME
        git init
        git add --all
        git commit -m "🚀 Init"
        git branch -M main
        git remote remove origin
        git remote add origin https://github.com/"$NAME".git
        git push -u origin main
        echo "⚡️ Task complete"
    fi
else
    echo "⚡️ Please enter deploy type"
    ./deploy.sh
fi
