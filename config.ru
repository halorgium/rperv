app = lambda {|env|
  [200, {"Content-Type" => "text/plain"}, [Time.now, "\n"]]
}

run app
