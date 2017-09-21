# configure the day-to-day environment tools

package tmux
home_directory = node['home_directory']

cookbook_file "#{home_directory}.tmux.conf" do
  source "tmux.conf"
end

package vim
cookbook_file "#{home_directory}.vimrc" do
  source "vimrc"
end
