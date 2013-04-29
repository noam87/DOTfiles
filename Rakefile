########################## Generate List of dotfiles ###########################

FILES     = FileList[
                  'tmux.conf',
                  'vimrc',
                  'xmobarrc',
                  'Xmodmap',
                  'xmonad',
                  'xsession',
                  'zshrc',

                ].pathmap("~/DOTfiles/home/%f")
SYMLINKS  = FILES.pathmap("%{^~/DOTfiles/home,~}d/.%f")

######################### Tasks ################################################

directory "~/DOTbackup"
directory "~/.vim/colors"

task :backup => ["~/DOTbackup", "~/.vim/colors"] do
  backup_target = SYMLINKS.pathmap("%n%x")
  time = Time.now.strftime("%s")
  sh "mkdir ~/DOTbackup/#{time}"

  SYMLINKS.zip(backup_target).each do |symlink,target|
    sh "mv #{symlink} ~/DOTbackup/#{time}/#{target}"
  end
end

task :default => [:backup] do 
  FILES.zip(SYMLINKS).each do |source, symlink|
    sh "ln -s #{source} #{symlink}"
  end

  # TODO: special cases that don't fit the SYMLINKS pattern

end

