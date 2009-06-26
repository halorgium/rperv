app = lambda {|env|
  [200, {"Content-Type" => "text/plain"}, [Time.now.to_s, "\n"]]
}

run app
