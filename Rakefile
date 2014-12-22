########################## Generate List of dotfiles ###########################

FILES     = FileList[
                  'tmux.conf',
                  'vim',
                  'vimrc',
                  'Xmodmap',
                  'zshrc',
                  'gitconfig',
                  'gitignore_global',
                  'xsession',
                  'i3',
                  'scripts'
                ].pathmap("~/DOTfiles/home/%f")
SYMLINKS  = FILES.pathmap("%{~/DOTfiles/home,~}d/.%f")

######################### Tasks ################################################
task :echo do
  puts SYMLINKS
end

task :backup do
  backup_target = SYMLINKS.pathmap("%n%x")
  time = Time.now.strftime("%s")
  sh "mkdir -p ~/DOTbackup/#{time}"

  SYMLINKS.zip(backup_target).each do |symlink,target|
    if File.exists?(File.expand_path "#{symlink}")
      sh "mv #{symlink} ~/DOTbackup/#{time}/#{target}"
    end
  end
end

task :default => [:backup] do 
  FILES.zip(SYMLINKS).each do |source, symlink|
    sh "ln -s #{source} #{symlink}"
  end
end

