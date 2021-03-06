class ApplicationPresenter < Presenter::Base
  # You'll notice Presenter::Base, this handles delegation of methods based on naming conventions.
  # Along with defining the #initialize method & the model helper method for all presenters.

  # Use rails g presenter ModelName to create a presenter file for a model.

  # All presenter classes inherit from this ApplicationPresenter and so define
  # methods here which you want all your presenters to inherit (just as you usually would).

  # For more, check the docs at: https://www.github.com/samsarge/presenter-rails
end
