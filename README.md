# sysadmin-toolkit
Automation and monitoring toolkit for Linux server administration

 #  Sysadmin Toolkit – Automation & Monitoring Project

##  Цел на проекта

Този проект демонстрира основни задачи от ежедневието на системния администратор чрез Bash скриптове. Целта е да се автоматизират често срещани операции като:
- Инсталация и конфигурация на уеб сървър (Nginx)
- Създаване на потребители с SSH достъп
- Архивиране на файлове
- Подготовка за мониторинг и управление на ресурси

Проектът е разработен с цел практика, демонстрация и използване като портфолио при кандидатстване за позиции като системен администратор.

##  Структура на проекта

```
sysadmin-toolkit/
├── scripts/
│   ├── setup_webserver.sh      # Инсталира и активира Nginx уеб сървър
│   ├── create_users.sh         # Създава потребител и добавя SSH ключ
│   ├── backup.sh               # Архивира избрана директория (./www)
├── www/                        # Симулирана уеб директория с примерен файл
├── backups/                   # Създадени архиви от backup.sh
├── README.md                  # Документация на проекта
```

##  Как да използвам проектa

1. **Клонирай хранилището:**

```bash
git clone https://github.com/angeltenev99/sysadmin-toolkit.git
cd sysadmin-toolkit/scripts
chmod +x *.sh
```

2. **Инсталирай и стартирай Nginx:**

```bash
./setup_webserver.sh
```

3. **Създай потребител с SSH ключ:**

```bash
./create_users.sh username
```

4. **Архивирай уеб директорията (www):**

```bash
./backup.sh
```

>  В среди като Replit скриптовете са адаптирани и **не използват `sudo`**, тъй като достъпът до системни команди е ограничен.

##  Скриптове в проекта

###  `setup_webserver.sh`
Инсталира Nginx, стартира услугата и извежда статуса ѝ.

###  `create_users.sh`
Създава потребител, добавя SSH директория и публичен ключ. В Replit е симулирано без реален потребител.

###  `backup.sh`
Архивира папката `./www` в `./backups` като `.tar.gz`, използвайки текущата дата за име.

##  Тествано в:

-  Replit (https://replit.com/) – онлайн среда с ограничения
-  Ubuntu VM / WSL – при реална Linux машина




