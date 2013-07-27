module ApplicationHelper
    include Twitter::Autolink
    include Twitter::Extractor
    def extract_tags
        extract_hashtags(self.post)
    end

    # Returns the full title on a per-page basis.
    def full_title(page_title)
        base_title = "CampusWeaver"
        if page_title.empty?
            base_title
            else
            "#{base_title} | #{page_title}"
        end
    end
end

