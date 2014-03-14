#This shell use to update SwitchyRules.ssrl file and git pull to git repo automatically.

cp ~/Downloads/SwitchyRules.ssrl ~/Projects/vim/GFW/SwitchyRules.ssrl

cd ~/Projects/vim/GFW/
git add SwitchyRules.ssrl
git commit SwitchyRules.ssrl -m "update SwitchyRules.ssrl"

git push origin master
