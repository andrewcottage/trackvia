require 'json'
require 'curb'

class Trackvia
  def initialize(account_id, api_key, table_id)
    @account_id = account_id
    @api_key = api_key
    @table_id = table_id
    @base_url = "https://secure.trackvia.com/app/api"
  end

  def pull_records(view_id)
    action = "getview"
    fmt = 'json'
    params = {accountid: @account_id, apikey: @api_key, action: action, viewid: view_id, tableid: @table_id, format: fmt}
    response = Curl.post(@base_url, params)
    JSON.parse(response.body_str)
  end

  def update_record(record_id, data={})
    action = "updaterecord"
    fmt = 'json'
    params = {accountid: @account_id, apikey: @api_key, action: action, tableid: @table_id, recordid: record_id, format: fmt, data: data.to_json}
    response = Curl.post(@base_url, params)
    JSON.parse(response.body_str)
  end

  def pull_record(record_id)
    action = "getrecord"
    fmt = 'json'
    params = {accountid: @account_id, apikey: @api_key, action: action, tableid: @table_id, format: fmt, recordid: record_id}
    response = Curl.post(@base_url, params)
    JSON.parse(response.body_str)
  end

  def search(terms)
    action = "getsearch"
    fmt = 'json'
    params = {accountid: @account_id, apikey: @api_key, action: action, tableid: @table_id, format: fmt, terms: terms}
    response = Curl.post(@base_url, params)
    JSON.parse(response.body_str)
  end

end
