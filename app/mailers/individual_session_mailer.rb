class IndividualSessionMailer < ApplicationMailer

  def new_individual_session_email(individual_session)
    @individual_session = individual_session
    mail(to: ['hatim.jini@gmail.com'], subject: 'Contact Message')
  end

end
