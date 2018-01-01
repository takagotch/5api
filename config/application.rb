
config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resuource '*', :headers => "ary, :methods => [:get, :post, :options]
  end
end

