task :find_candidates => :environment do
    require 'open-uri'
    require 'pp'
    candidates = Candidate.all
    
    for candidate in candidates do
      puts "Looking for mentions of #{candidate.name}."
      articles = Mention.gnews_search_for candidate.name
      puts " #{articles.size} Articles."
      mention_count = 0
      for article in articles do
        begin
          current_article = Newsarticle.find_or_create_by_url(article)
        rescue Exception => esc
         puts "Unable to find or create: "
         # pp esc
        else
          if !current_article.candidates.include?(candidate)
            mention_count += 1
            mention = Mention.new(:candidate => candidate, :newsarticle => current_article, :summary => article[:summary])
            puts " Error saving mention for #{current_article.title}." if !mention.save
          end
          if current_article.moderation == 'new'
            current_article.moderation = 'approved'
            current_article.save
          end
        end
      end
      puts " !! #{mention_count} New Mentions. !!" if mention_count != 0
    end
    puts
  end
