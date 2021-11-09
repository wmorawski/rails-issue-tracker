require "rails_helper"

RSpec.describe IssueStatusesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/issue_statuses").to route_to("issue_statuses#index")
    end

    it "routes to #show" do
      expect(get: "/issue_statuses/1").to route_to("issue_statuses#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/issue_statuses").to route_to("issue_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/issue_statuses/1").to route_to("issue_statuses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/issue_statuses/1").to route_to("issue_statuses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/issue_statuses/1").to route_to("issue_statuses#destroy", id: "1")
    end
  end
end
