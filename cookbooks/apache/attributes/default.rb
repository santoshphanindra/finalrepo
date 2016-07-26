default["apache"]["sites"]["sp1"] = { "site_title" => "my website will run from this hopefully", "port" => 80, "domain" => "santoshphanindra-gmail-com2.mylabserver.com" }
default["apache"]["sites"]["sp2"] = {"site_title" => "this is the second one", "port" => 80, "domain" => "santoshphanindra-gmail-com2b.mylabserver.com" }
default["apache"]["sites"]["sp3"] = {"site_title" => "this is the ubuntu one", "port" => 80, "domain" => "santoshphanindra-gmail-com3.mylabserver.com" }

case node["platform"]
when "redhat"
default["apache"]["package"] = "httpd" 
when "centos"
default["apache"]["package"] = "httpd"
when "ubuntu"
default["apache"]["package"] = "apache2"
end
