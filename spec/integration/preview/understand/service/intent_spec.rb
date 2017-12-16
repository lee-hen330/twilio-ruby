##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Intent' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .intents("UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "unique_name": "unique_name",
          "links": {
              "fields": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Fields",
              "named_entities": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/NamedEntities",
              "samples": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Samples"
          },
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_updated": "2015-07-30T20:00:00Z",
          "service_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z"
      }
      ]
    ))

    actual = @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                       .intents("UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .intents.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "key": "intents",
              "page_size": 50,
              "next_page_url": null,
              "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents?PageSize=50&Page=0",
              "page": 0,
              "first_page_url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents?PageSize=50&Page=0",
              "previous_page_url": null
          },
          "intents": []
      }
      ]
    ))

    actual = @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                       .intents.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "key": "intents",
              "page_size": 50,
              "next_page_url": null,
              "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents?PageSize=50&Page=0",
              "page": 0,
              "first_page_url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents?PageSize=50&Page=0",
              "previous_page_url": null
          },
          "intents": [
              {
                  "unique_name": "unique_name",
                  "links": {
                      "fields": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Fields",
                      "named_entities": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/NamedEntities",
                      "samples": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Samples"
                  },
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "friendly_name",
                  "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "service_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z"
              }
          ]
      }
      ]
    ))

    actual = @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                       .intents.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .intents.create(unique_name: "unique_name")
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'UniqueName' => "unique_name"}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "unique_name": "unique_name",
          "links": {
              "fields": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Fields",
              "named_entities": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/NamedEntities",
              "samples": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Samples"
          },
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_updated": "2015-07-30T20:00:00Z",
          "service_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z"
      }
      ]
    ))

    actual = @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                       .intents.create(unique_name: "unique_name")

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .intents("UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "unique_name": "unique_name",
          "links": {
              "fields": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Fields",
              "named_entities": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/NamedEntities",
              "samples": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Samples"
          },
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_updated": "2015-07-30T20:00:00Z",
          "service_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z"
      }
      ]
    ))

    actual = @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                       .intents("UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .intents("UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Intents/UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.preview.understand.services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                       .intents("UDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end
end