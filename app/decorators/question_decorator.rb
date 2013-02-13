class QuestionDecorator < Draper::CollectionDecorator
	delegate :created_at, :current_page, :total_pages, :limit_value, :title, :id, :description

	def month
		I18n.localize(source.created_at, format: "%b")
	end

	def day
		I18n.localize(source.created_at, format: "%d")
	end

	def created_at_short
		I18n.localize(source.created_at, format: :short)
	end

	def name
		source.requester_name
	end

	def linked_title
		h.link_to source.title, source
	end

	def linked_answers_count
		h.link_to source, class: "btn btn-mini" do
			h.content_tag :i, I18n.t("questions.question.answer", count: source.answers_count), class: "icon-comment"
		end
	end

	def addresss
		"#{city_name} / #{state_name}"
	end

	def description_truncate
		h.simple_format h.truncate(source.description, length:  500)
	end

	def linked_read_more
		h.link_to source, class: "btn btn-mini" do
			h.content_tag :i, I18n.t("general.read_more"), class: "icon-circle-arrow-right"
		end
	end

	private

	def handle_none(value)
    if value.present?
      yield
    else
    	I18n.t("general.uninformed")
    end
  end

  def state_name
  	handle_none source.state do
     	source.state.name
    end
  end

  def city_name
  	handle_none source.city do
     	source.city.name
    end
  end
end