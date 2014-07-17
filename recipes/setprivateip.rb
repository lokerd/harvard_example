# Set private IP address

proxynodes = node[:opsworks][:layers][:lb][:instances]

ruby_block "Set Private IP" do
    block do
       for proxynode in proxynodes do
            puts proxynode
        end
    end
    action :create
end 
