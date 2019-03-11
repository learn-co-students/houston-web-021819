require 'pry'

class App
  def call(environment_hash)
    
    status_code = 200
    header = {}
    body = ["
      <html>
        <body>
          <h1>#{environment_hash["PATH_INFO"]}</h1>
          <a href='http://10.185.1.225/#{environment_hash["PATH_INFO"]}-one'>Click Me</a>
        </body>
      </html>
    "] 

    return [status_code, header, body]
  end
end







