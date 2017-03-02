require 'rubygems'
require 'net/ldap'

class LdapController < ApplicationController
	attr_reader :ld_user, :ld_pass
	#ld_user ||='bachinin@trustgroup'
	#ld_pass ||='Z@eb00d0lr@'
  def initialize()
  	ldap = Net::LDAP.new
 	ldap.host = "tg-sr-dc-02"
  	ldap.port = 389
  	@ld_user ||= 'bachinin@trustgroup' #ld_user
  	@ld_pass ||='Z@eb00d0lr@'# ld_pass
  	ldap.auth @ld_user, @ld_pass
	treebase = "dc=trustgroup,dc=local"
	filter = Net::LDAP::Filter.eq( "samaccountname", @ld_user )
	ldap.search( :base => treebase, :filter => filter ) do |entry|
		@dispname = entry.displayname
		p @dispname
	end

  end
end
