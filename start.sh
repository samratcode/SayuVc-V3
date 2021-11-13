
echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/samratcode/SayuVc-V3 /SayuVc-V3
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/samratcode/SayuVc-V3 -b $BRANCH /SayuVc-V3
fi
cd /SayuVc-V3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
