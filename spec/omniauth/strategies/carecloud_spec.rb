require "spec_helper"

describe OmniAuth::Strategies::CareCloud do
  subject do
    OmniAuth::Strategies::CareCloud.new({})
  end

  it "has correct name" do
    expect(subject.options.name).to eq("carecloud")
  end

  it "has correct site" do
    expect(subject.options.client_options.site).to eq("https://api.carecloud.com")
  end

  it "has correct authorize url" do
    expect(subject.options.client_options.authorize_url).to eq("https://api.carecloud.com/oauth2/authorize")
  end

  it "has correct token url" do
    expect(subject.options.client_options.token_url).to eq("https://api.carecloud.com/oauth2/access_token")
  end
end
