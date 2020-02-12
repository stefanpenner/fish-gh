function gh-co -a fullname
  set name (string split '/' $fullname)

  set org $name[1]
  set repo $name[2]

  set dest $HOME/src/$org/$repo

  mkdir -p $HOME/src/$org 2> /dev/null

  if not test -d "$dest"
    git clone "git@github.com:$org/$repo" "$dest"
  end

  cd $dest
end
