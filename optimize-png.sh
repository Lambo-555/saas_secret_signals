#!/bin/bash
# Скрипт для оптимизации PNG файлов
# Требует optipng: sudo apt install optipng

echo "Оптимизация PNG файлов..."

if ! command -v optipng &> /dev/null; then
    echo "Установите optipng: sudo apt install optipng"
    exit 1
fi

# Оптимизируем все PNG в icons/
if [ -d "icons" ]; then
    echo "Оптимизирую иконки в icons/..."
    optipng -o7 icons/*.png 2>/dev/null
fi

# Оптимизируем все PNG в favicon/
if [ -d "favicon" ]; then
    echo "Оптимизирую фавиконы в favicon/..."
    optipng -o7 favicon/*.png 2>/dev/null
fi

echo "✅ Оптимизация завершена!"
