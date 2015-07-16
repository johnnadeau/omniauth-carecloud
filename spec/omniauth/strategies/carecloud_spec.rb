require "spec_helper"

describe OmniAuth::Strategies::CareCloud do

  subject do
    OmniAuth::Strategies::CareCloud.new({}, "some_client_id", "some_secret")
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

  it "has the correct basic authentication header" do
    expect(subject.basic_auth_header).to eq("Basic c29tZV9jbGllbnRfaWQ6c29tZV9zZWNyZXQ=")
  end
end
