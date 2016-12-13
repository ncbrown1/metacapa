module ApplicationHelper
    def octokit_for(u)
        Octokit::Client.new(:access_token => u.token)
    end
end
