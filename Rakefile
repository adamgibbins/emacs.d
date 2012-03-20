task :default do
  sh %{git pull origin master}
  sh %{git submodule foreach git pull origin master --recurse-submodules}
end
