class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

    BACKGROUNDS = ['https://images.unsplash.com/photo-1537111355507-1f73d87ecadf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2551&q=80',
    'https://images.unsplash.com/photo-1501822308281-22440e34105f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2550&q=80',
    'https://images.unsplash.com/photo-1495442358998-961b69f45703?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2448&q=80',
    'https://images.unsplash.com/photo-1464082354059-27db6ce50048?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80',
    'https://images.unsplash.com/photo-1523791633495-94ebabc8a795?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2551&q=80',
    'https://images.unsplash.com/photo-1559139061-28d9de44e40e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3150&q=80']

  def home
    @random_image = BACKGROUNDS.sample
  end
end
