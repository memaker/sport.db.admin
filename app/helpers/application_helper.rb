module ApplicationHelper

  def game_team1_style_class( game )
    ## fix: move to game model in game.rb
    buf = ''
    buf << game.team1_style_class
    buf << ' game-knockout ' if game.knockout?
    ### fix: loser - add method for checking winner/loser on ko pairs using (1st leg/2nd leg totals)
    buf << ' game-team-loser '  if game.complete? && (game.score1 < game.score2)
    buf
  end
  
  def game_team2_style_class( game )
    ## fix: move to game model in game.rb
    buf = ''
    buf << game.team2_style_class
    buf << ' game-knockout ' if game.knockout?
    buf << ' game-team-loser '  if game.complete? && (game.score1 > game.score2)
    buf
  end

  def powered_by
    ## todo/fix: use version from wettpool module
    content_tag :div do
      link_to( 'Questions? Comments?', 'http://groups.google.com/group/opensport' ) + " | " +
      link_to( "world.db/#{WorldDB::VERSION}", 'https://github.com/geraldb/world.db' )  + ', ' +
      link_to( "sport.db/#{SportDB::VERSION}", 'https://github.com/geraldb/sport.db' )  + ', ' +
      link_to( 'sport.db.admin/1', 'https://github.com/geraldb/sport.db.admin' ) + ' - ' + 
      content_tag( :span, "Ruby/#{RUBY_VERSION} (#{RUBY_RELEASE_DATE}/#{RUBY_PLATFORM}) on") + ' ' +
      content_tag( :span, "Rails/#{Rails.version} (#{Rails.env})" ) + " | " + 
      link_to( 'Icon Drawer Flags', 'http://www.icondrawer.com' )
      ## content_tag( :span, "#{request.headers['SERVER_SOFTWARE'] || request.headers['SERVER']}" )
    end
  end

  ### todo/fix: move to format helper
  
  def fmt_date_with_week( date )
    if date.nil?
      '-'
    else
      ##  e.g. 2012 (Week 22) // Oct/21 Fri
      date.strftime( "%Y (Week %V) // %b/%d %a" )
    end
  end
  

end # module ApplicationHelper
