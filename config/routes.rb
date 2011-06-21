# config/routes.rb:
# Mapping URLs to controllers for FOIFA.
#
# Copyright (c) 2007 UK Citizens Online Democracy. All rights reserved.
# Email: francis@mysociety.org; WWW: http://www.mysociety.org/
#
# $Id: routes.rb,v 1.92 2009-10-14 22:01:27 francis Exp $
#Basic::Application.routes.draw do
ActionController::Routing::Routes.draw do |map|

    # The priority is based upon order of creation: first created -> highest priority.

    # Sample of regular route:
    # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
    # Keep in mind you can assign values other than :controller and :action
    
    #map.with_options :controller => 'general' do |general|
        #general.frontpage           '/',            :action => 'frontpage'
        match              '/', :controller => 'general', :action => 'frontpage'
        #general.blog '/blog', :action => 'blog'

        #search_redirect '/search', :controller => 'general',     :action => 'search_redirect'
        # XXX combined is the search query, and then if sorted a "/newest" at the end.
        # Couldn't find a way to do this in routes which also picked up multiple other slashes
        # and dots and other characters that can appear in search query. So we sort it all
        # out in the controller.
        #general.search_general '/search/*combined',      :action => 'search'

        #general.random_request '/random', :action => 'random_request'

        #general.fai_test '/test', :action => 'fai_test'
    #end

    #map.with_options :controller => 'request' do |request|
        #request.request_list   '/list/:view',        :action => 'list', :view => nil

        #request.new_request    '/new',         :action => 'new'
        #request.new_request_to_body    '/new/:url_name',         :action => 'new'

        #request.show_request     '/request/:url_title.:format', :action => 'show'
        #request.details_request     '/details/request/:url_title', :action => 'details'
        #request.similar_request     '/similar/request/:url_title', :action => 'similar'

        #request.describe_state   '/request/:id/describe', :action => 'describe_state'
        #request.show_response_no_followup    '/request/:id/response', :action => 'show_response'
        #request.show_response    '/request/:id/response/:incoming_message_id', :action => 'show_response'
        #request.get_attachment_as_html   '/request/:id/response/:incoming_message_id/attach/html/:part/*file_name', :action => 'get_attachment_as_html'
        #request.get_attachment   '/request/:id/response/:incoming_message_id/attach/:part/*file_name', :action => 'get_attachment'

        #request.info_request_event '/request_event/:info_request_event_id', :action => 'show_request_event'

        #request.upload_response "/upload/request/:url_title", :action => 'upload_response'

    #end

    # Use /profile for things to do with the currently signed in user.
    # Use /user/XXXX for things that anyone can see about that user.
    # Note that /profile isn't indexe by search (see robots.txt)
    #map.with_options :controller => 'user' do |user|
        #user.signin '/profile/sign_in',        :action => 'signin'
        #user.signup '/profile/sign_up',        :action => 'signup'
        #user.signout '/profile/sign_out',      :action => 'signout'

        #user.confirm '/c/:email_token', :action => 'confirm'
        #user.show_user '/user/:url_name.:format', :action => 'show'
        #user.contact_user '/user/contact/:id', :action => 'contact'

        #user.signchangepassword '/profile/change_password',      :action => 'signchangepassword'
        #user.signchangeemail '/profile/change_email',      :action => 'signchangeemail'

        #user.set_profile_photo '/profile/set_photo', :action => 'set_profile_photo'
        #user.clear_profile_photo '/profile/clear_photo', :action => 'clear_profile_photo'
        #user.get_profile_photo '/user/:url_name/photo.png', :action => 'get_profile_photo'
        #user.get_draft_profile_photo '/profile/draft_photo/:id.png', :action => 'get_draft_profile_photo'
        #user.set_profile_about_me '/profile/set_about_me', :action => 'set_profile_about_me'

        #user.river '/profile/river', :action => 'river'
    #end

    map.with_options :controller => 'public_body' do |body|
        body.list_public_bodies "/body", :action => 'list'
        #match              '/body/list/:tag', :controller => 'public_body', :action => 'list'
        body.list_public_bodies "/body/list/:tag", :action => 'list'
        #body.list_public_bodies_redirect "/local/:tag", :action => 'list_redirect'
        #body.all_public_bodies_csv "/body/all-authorities.csv", :action => 'list_all_csv'
        #body.show_public_body "/body/:url_name.:format", :action => 'show'
        #body.view_public_body_email "/body/:url_name/view_email", :action => 'view_email'
    end

    #map.with_options :controller => 'comment' do |comment|
        #comment.new_comment "/annotate/request/:url_title", :action => 'new', :type => 'request'
    #end

    #map.with_options :controller => 'track' do |track|
        # /track/ is for setting up an email alert for the item
        # /feed/ is a direct RSS feed of the item
        #track.track_request '/:feed/request/:url_title.:format', :action => 'track_request', :feed => /(track|feed)/
        #track.track_list '/:feed/list/:view.:format', :action => 'track_list', :view => nil, :feed => /(track|feed)/
        #track.track_public_body "/:feed/body/:url_name.:format", :action => 'track_public_body', :feed => /(track|feed)/
        #track.track_user "/:feed/user/:url_name.:format", :action => 'track_user', :feed => /(track|feed)/
        # XXX must be better way of getting dots and slashes in search queries to work than this *query_array
        # Also, the :format doesn't work. See hacky code in the controller that makes up for this.
        #track.track_search "/:feed/search/*query_array.:format", :action => 'track_search_query' , :feed => /(track|feed)/

        #track.update '/track/update/:track_id', :action => 'update'
        #track.delete_all_type '/track/delete_all_type', :action => 'delete_all_type'
        #track.atom_feed '/track/feed/:track_id', :action => 'atom_feed'
    #end

    #map.with_options :controller => 'help' do |help|
      #help.help_unhappy '/help/unhappy/:url_title', :action => 'unhappy'
      #help.help_general '/help/:action', :action => :action
    #end

    #map.with_options :controller => 'holiday' do |holiday|
        #holiday.due_date "/due_date/:holiday", :action => 'due_date'
    #end

    #map.with_options :controller => 'request_game' do |game|
        #game.play '/categorise/play', :action => 'play'
        #game.request '/categorise/request/:url_title', :action => 'show'
        #game.stop '/categorise/stop', :action => 'stop'
    #end

    # NB: We don't use routes to *construct* admin URLs, as they need to be relative
    # paths to work on the live site proxied over HTTPS to secure.mysociety.org
    #map.connect '/admin/', :controller => 'admin_general', :action => 'index'
    #map.connect '/admin/timeline', :controller => 'admin_general', :action => 'timeline'
    #map.connect '/admin/debug', :controller => 'admin_general', :action => 'debug'
    #map.connect '/admin/stats', :controller => 'admin_general', :action => 'stats'
    #map.connect '/admin/missing_scheme', :controller => 'admin_public_body', :action => 'missing_scheme'
    #map.connect '/admin/unclassified', :controller => 'admin_request', :action => 'list_old_unclassified'
    #map.connect '/admin/body/:action/:id', :controller => 'admin_public_body'
    #map.connect '/admin/request/:action/:id', :controller => 'admin_request'
    #map.connect '/admin/user/:action/:id', :controller => 'admin_user'
    #map.connect '/admin/track/:action/:id', :controller => 'admin_track'
    #map.connect '/admin/censor/:action/:id', :controller => 'admin_censor_rule'

    # Allow downloading Web Service WSDL as a file with an extension
    # instead of a file named 'wsdl'
    # map.connect ':controller/service.wsdl', :action => 'wsdl'
end

