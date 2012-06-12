packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libsigsegv0
  /
when "precise"
  packages |= %w/
    libsigsegv2
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
