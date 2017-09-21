# configure the day-to-day environment tools

home_directory = node['home_directory']

package "tmux"
bash 'install tmux package manager' do
  code <<-EOH
    mkdir -p #{home_directory}/.tmux/plugins
    git clone \
      https://github.com/tmux-plugins/tpm #{home_directory}/.tmux/plugins/tpm
  EOH
  not_if { ::File.directory?("#{home_directory}/.tmux/plugins/tpm") }
end
cookbook_file "#{home_directory}/.tmux.conf" do
  source "tmux.conf"
end

package "vim"
cookbook_file "#{home_directory}/.vimrc" do
  source "vimrc"
end
