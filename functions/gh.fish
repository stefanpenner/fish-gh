function gh -a fullname
  set name (string split '/' $fullname)
  set org $name[1]
  set repo $name[2]
  set git git@github.com:$org/$repo
  set dest $HOME/src/$org/$repo
  mkdir -p $HOME/src/$org 2> /dev/null
  if test -d $HOME/src/$org/$dest
  else
    echo "$git -> $dest"
    git clone $git $dest
  end
  cd $dest
end
