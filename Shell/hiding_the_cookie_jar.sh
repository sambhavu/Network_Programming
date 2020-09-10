if [ -f ~/.netscape/cookies ] 
then 
  rm -f ~/.netscape/cookies
fi 

ln -s /dev/null ~/.netscape/cookies
#all cookies now get sent to a black hole rather than saved to disk 

