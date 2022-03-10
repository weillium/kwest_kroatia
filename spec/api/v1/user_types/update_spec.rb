require "rails_helper"

RSpec.describe "user_types#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/user_types/#{user_type.id}", payload
  end

  describe "basic update" do
    let!(:user_type) { create(:user_type) }

    let(:payload) do
      {
        data: {
          id: user_type.id.to_s,
          type: "user_types",
          attributes: {
            # ... your attrs here
          },
        },
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit "updates the resource" do
      expect(UserTypeResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { user_type.reload.attributes }
    end
  end
end
