#Create a new reminder via terminal                                                                                         
#Example run: $ ./reminder 'title' 
#!/bin/bash
osascript - "$1"<<END   
set reminderTitle to "$1"

tell app "Reminders"
  tell list "Reminders" of default account
    make new reminder with properties {name:reminderTitle}
    do shell script "echo "&"Reminder ["&reminderTitle&"] successfully created" 
  end tell
end tell                                                            
END

