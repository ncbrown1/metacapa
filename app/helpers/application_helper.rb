module ApplicationHelper

  def app_octokit
    Octokit::Client.new \
      :client_id => ENV['GITHUB_CLIENT_ID'],
      :client_secret => ENV['GITHUB_CLIENT_SECRET']
  end

  def octokit_for(u)
    Octokit::Client.new \
      :access_token => u.token
  end
end
