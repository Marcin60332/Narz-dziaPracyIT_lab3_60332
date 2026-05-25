#Etap 1
#Wprowadzenie do Commita
git commit -m "C2"
git commit -m "C3"

#Etap 2
#Rozgałęcienia w gicie
git checkout -b bugFix

#Etap 3
#Merge w gicie
git checkout -b bugFix
git commit -m "C2"
git checkout main
git commit -m "C3"
git merge bugFix

#Etap 4
#Wprowadzenie do Rebase
git checkout -b bugFix
git commit -m "C2"
git switch main
git commit -m "C3"
git switch bugFix
git rebase main

#Etap 5
#Odczep sobie HEAD
git checkout C4

#Etap 6
#Referencje względne 1
git checkout C4
git checkout HEAD^

#Etap 7
#Referencje względne 2
git checkout C0
git branch -f bugFix HEAD
git checkout C6
git branch -f main HEAD
git checkout HEAD~3

#Etap 8
#Odwracanie zmian w Gicie
git reset local~1
git switch pushed
git revert pushed

#Etap 9
#Wprowadzenie do cherry-pick
git cherry-pick C3 C4 C7

#Etap 10
#Wprowadzenie do interaktywnego rebase’a
git rebase -i main~4

#Etap 11
#Wzięcie tylko 1 commita
git rebase -i bugFix~3
git switch main
git merge bugFix

#Etap 12
#Żonglowanie commitami 1
git rebase -i caption~2
git rebase -i caption~1
git rebase -i caption~2
git switch main     # lub zamiast tego git branch -f main caption
git merge caption       

#Etap 13
#Żonglowanie commitami 2
git switch main
git cherry-pick C2
git checkout main^
git cherry-pick C2
git cherry-pick C3
git branch -f main HEAD

#Etap 14
#Tagi Gita
git tag v0 C1
git tag v1 C2
git checkout HEAD^

#Etap 15
#Git describe
git describe C2
git describe C6
git commit -m "wyjście"

#Etap 16 
#Rebase ponad 9000 razy
git rebase main bugFix
git rebase bugFix side
git rebase side another
git branch -f main another

#Etap 17
#Wielu rodziców
git checkout HEAD~^2~1
git checkout -b bugWork
git switch main

#Etap 18
#Spaghetti gałęzi
git switch one
git cherry-pick C4 C3 C2
git switch two
git cherry-pick C5 C4 C3 C2
git branch -f three C2

#Etap 19
#Wstępop do klonowania
git clone

#etap 20
#Zdalne gałęzie
git commit -m "C3"
git checkout o/main
git commit -m "C4"

#Etap 21
#Git fetch
git fetch

#Etap 22
#Git pull
git pull

#Etap 23
#Symulacja pracy zespołowej
git clone
git fakeTeamwork main 2
git commit -m "C4"
git pull

#Etap 24
#Git push
git commit -m "C2"
git commit -m "C3"
git push

#Etap 25
#Rozbieżna historia
git clone
git fakeTeamwork main 1
git commit -m "C2"
git pull --rebase
git push

#Etap 26
#Zablokowany main
git checkout -b feature
git branch -f main o/main
git push origin feature

#Etap 27
#Wypychanie dla wytrwałych
git fetch
git rebase -i o/main side1
git rebase -i side1 side2
git rebase -i side2 side3
git branch -f main side3
git switch main
git push

#Etap 28
#Scalanie z remote
git fetch
git switch o/main
git merge side1
git merge side2
git merge side3
git branch -f main HEAD
git switch main
git push

#Etap 29
#Śledzenie zdalnych repo
git checkout -b side o/main
git commit
git fetch
git rebase o/main side
git push

#Etap 30
#Argumenty git push
git push origin main
git push origin foo

#Etap 31
#Argumenty git push - głębiej
git push origin foo:main
git push origin main^:foo

#Etap 32
#Argumenty fetch
git fetch origin C3:foo
git fetch origin C6:main
git switch foo
git merge main

#Etap 33
#Źródło nicości
git push origin :foo
git fetch origin :bar

#Etap 34
#Argumenty pull
git pull origin c3:foo
git pull origin c2:side
