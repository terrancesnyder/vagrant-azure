# git clone --single-branch -b v2.0.1 https://github.com/terrancesnyder/vagrant-azure.git
# cd vagrant-azure

rm -rf ./vagrant-azure-2.0.1.gem || true
gem build vagrant-azure.gemspec
rm -rf ~/.vagrant.d/gems/gems/vagrant-azure-2.0.1/ || true
vagrant plugin install ./vagrant-azure-2.0.1.gem