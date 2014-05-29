xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "星米‘s - 前端开发博客"
    xml.description "web前端开发"
    xml.link root_path
    
    for article in @articles
      xml.item do
        xml.title article.title
        xml.content article.content
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link article_url(article)
        xml.guid article_url(article)
      end
    end
  end
end