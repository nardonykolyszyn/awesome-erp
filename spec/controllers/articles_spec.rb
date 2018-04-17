require 'rails_helper'

describe ArticlesController do
  it do
    should rescue_from(ActiveRecord::RecordNotFound).with(:render_not_found)    
  end
end
