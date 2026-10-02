---
title: Przetwarzanie danych 2026/2027
subtitle: Przygotowanie komputera — instalacja narzędzi
lang: pl
---

Zanim zaczniemy pierwsze zajęcia, zainstaluj na swoim komputerze **cztery programy** i załóż **konto na GitHubie**. Zrób to **w podanej kolejności**. Całość zajmie ok. 45 minut. Instrukcja dotyczy systemu **Windows 10/11**.

## 0. PowerShell — co to jest i jak go otworzyć

**PowerShell** to okno, w którym zamiast klikać myszką, sterujesz komputerem wpisywanymi poleceniami (tzw. terminal lub wiersz poleceń). Jest już w Windowsie — nic nie instalujesz. Będziemy go używać do sprawdzania, czy programy zainstalowały się poprawnie.

**Jak otworzyć:**

1. Naciśnij klawisz **Windows** (lub kliknij przycisk Start).
2. Wpisz `PowerShell`.
3. Kliknij wynik **Windows PowerShell** (zwykłe uruchomienie — *nie* „jako administrator”).

Otworzy się okno z migającym kursorem po znaku zachęty, np. `PS C:\Users\Twoje.Imie>`.

**Jak z niego korzystać:**

- Wpisz polecenie i naciśnij **Enter**. Program wykona je i wypisze wynik.
- Polecenia z tej instrukcji (ciemne ramki) możesz **kopiować i wklejać** — wklejanie to prawy przycisk myszy lub `Ctrl+V`.
- Wypróbuj na początek polecenie, które wypisze dzisiejszą datę:

```powershell
Get-Date
```

- Okno zamykasz krzyżykiem albo poleceniem `exit`.

## 1. Git

Git to system kontroli wersji — będziemy go używać do pobierania materiałów i oddawania prac.

1. Wejdź na <https://git-scm.com/download/win>.
2. Pobierz **Git for Windows Setup** (wersja *64-bit*, *Standalone Installer*).
3. Uruchom instalator i w każdym kroku klikaj **Next** (ustawienia domyślne są w porządku), na końcu **Install**.
4. Sprawdź: otwórz **PowerShell** (krok 0) i wpisz:

```powershell
git --version
```

Powinieneś zobaczyć coś w rodzaju `git version 2.x.x`.

Następnie ustaw swoje dane (wpisz własne imię, nazwisko i **ten sam e-mail, którego użyjesz w GitHubie** — krok 2):

```powershell
git config --global user.name "Imię Nazwisko"
git config --global user.email "twoj.email@example.com"
```

## 2. Konto na GitHubie

GitHub to serwis, na którym będziemy przechowywać materiały z zajęć i Twoje prace. Potrzebujesz darmowego konta.

1. Wejdź na <https://github.com/signup>.
2. Podaj adres e-mail (najlepiej taki, którego używasz na co dzień), hasło i nazwę użytkownika. Nazwa jest widoczna publicznie, więc wybierz taką, której się nie wstydzisz (np. `jan-kowalski`, a nie `xXx_killer_xXx`).
3. Rozwiąż zadanie weryfikacyjne i potwierdź konto kodem, który przyjdzie na e-mail.
4. Wybierz plan **Free** (darmowy).
5. **Włącz uwierzytelnianie dwuskładnikowe (2FA)** — GitHub tego wymaga: *Settings → Password and authentication → Two-factor authentication*.
6. **Wyślij prowadzącemu swoją nazwę użytkownika** (zgodnie z instrukcją na zajęciach), żeby mógł dodać Cię do repozytorium kursu.

## 3. R

R to język programowania, w którym będziemy pracować.

1. Wejdź na <https://cran.r-project.org/bin/windows/base/>.
2. Kliknij **Download R-x.y.z for Windows** (zawsze **najnowsza** wersja).
3. Uruchom instalator, wybierz język i klikaj **Dalej** (ustawienia domyślne).
4. Zapamiętaj numer zainstalowanej wersji (np. `4.6.x`) — przyda się przy Rtools.

## 4. Rtools

Rtools to zestaw kompilatorów, potrzebny do instalowania części pakietów R ze źródeł. **Wersja Rtools musi pasować do wersji R.**

1. Wejdź na <https://cran.r-project.org/bin/windows/Rtools/>.
2. Wybierz linię Rtools odpowiadającą Twojemu R. Dla R 4.6.x jest to **Rtools45** (obsługuje R 4.5 i nowsze, w tym 4.6).
3. Pobierz **Rtools installer** i uruchom go z ustawieniami domyślnymi.

## 5. Positron

Positron to środowisko programistyczne (IDE) dla R, w którym będziemy pisać kod.

1. Wejdź na <https://positron.posit.co/download.html>.
2. Pobierz instalator dla Windows (**User Installer**, 64-bit).
3. Uruchom instalator i klikaj **Dalej**.
4. Uruchom Positron — program sam wykryje zainstalowaną wersję R.

## 6. Sprawdzenie, czy wszystko działa

W Positronie otwórz konsolę R (panel **Console**) i wpisz:

```r
R.version.string
pkgbuild::has_build_tools(debug = TRUE)
```

Pierwsza linia powinna pokazać numer wersji R. Jeśli pakiet `pkgbuild` nie jest zainstalowany, zainstaluj go poleceniem `install.packages("pkgbuild")`. Druga linia powinna zwrócić `TRUE` — oznacza to, że Rtools działa poprawnie.

Na koniec w terminalu Positrona (**Terminal**) wpisz `git --version`. Jeśli wszystkie trzy sprawdzenia przeszły, a konto na GitHubie masz założone — jesteś gotowy/a na zajęcia.
