# kbot
Телеграм бот - тренувальне завдання


- телеграм бот:
t.me/schweizer_bot

- токен для телеграм бота
або, зайшовши в бота можна перегенерувати токен, використовуючи команди /revoke (для відкликання поточного токена) та /token

- запис телетокена у змінну TELE_TOKEN:
read -s TELE_TOKEN -> Enter -> Ctrl+V -> Enter

- перевірка значення змінної TELE_TOKEN
echo $TELE_TOKEN

- експорт
export TELE_TOKEN

- команда для збирання білда 
go build -ldflags "-X="github.com/ol-schweizer/kbot/cmd.appVersion=1.0.2

- cтарт програми
./kbot start