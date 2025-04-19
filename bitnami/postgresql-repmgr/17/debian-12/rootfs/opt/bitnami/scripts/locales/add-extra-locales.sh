
set -e

# Add locales if not already present
for locale in "en_US.UTF-8 UTF-8" "tr_TR.UTF-8 UTF-8" "en_GB.UTF-8 UTF-8"; do
    if ! grep -q "^$locale" /etc/locale.gen; then
        echo "$locale" >> /etc/locale.gen
    fi
done

locale-gen
update-locale LANG=tr_TR.UTF-8 LC_MESSAGES=POSIX
