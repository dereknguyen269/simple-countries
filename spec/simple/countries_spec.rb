require 'spec_helper'

describe Simple::Countries do
  let(:country_1) { {:id=>1, :alias=>"AF", :name=>"Afghanistan"} }
  let(:country_2) { {:id=>2, :alias=>"AL", :name=>"Albania"} }
  let(:country_3) { {:id=>241, :alias=>"ZW", :name=>"Zimbabwe"} }

  it 'has a version number' do
    expect(Simple::Countries::VERSION).not_to be nil
  end

  it 'get all' do
    expect(Simple::Countries::all).not_to be nil
    expect(Countries::all).to include(country_1)
  end

  it 'find' do
    expect(Simple::Countries.find(2)).not_to be nil
    expect(Countries.find(2)).to eq country_2
  end

  it 'get first' do
    expect(Countries.first).to eq country_1
  end

  it 'get last' do
    expect(Countries.last).to eq country_3
  end

  it 'find by alias' do
    expect(Countries.find_by_alias('AF')).to eq 'Afghanistan'
  end

  it 'search' do
    expect(Countries.search('A')).to include(["AF", "Afghanistan"])
    expect(Countries.search('A')).to include(["AQ", "Antarctica"])
  end

  it 'search by alias' do
    expect(Countries.search_by_key('A')).to include("AF", "AL")
  end

  it 'has alias' do
    expect(Countries.has_key?('wf')).to eq false
    expect(Countries.has_key?('WF')).to eq true
  end

  it 'Get all Alias' do
    expect(Countries.alias).to include('AF', 'DZ', 'AQ')
  end

  it 'Get all name' do
    expect(Countries.name).to include('Afghanistan', 'American Samoa', 'Angola')
  end

  it 'Get States in Country' do
    expect(Countries.states('us')).to include(:AK=>"Alaska")
  end

  it 'Get Cities in State of a coutry' do
    expect(Countries.cities('ak', 'us')).to include('Adak', 'Akhiok')
  end

  it 'Get states from custom countires with input is a array []' do
    expect(Countries.custom_states(['us', 'br'])).to include(:AK=>"Alaska")
  end

  it 'Get cities from some states of some countires' do
    expect(
        Countries.custom_cities({
          "us" => ["ak", "al"],
          "br" => ["ac"]
          })
      ).to include("Adak", "Akhiok")
  end

  it 'Get list all cities of a country' do
    expect(Countries.cities_in_country('us')).to include("Adak", "Akhiok")
  end
end
