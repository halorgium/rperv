app = lambda {|env|
  [200, {}, [Time.now, "\n"]]
}

run app
