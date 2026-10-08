class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :usuario_logado

  protected

  def usuario_logado
    current_usuario
  end

  def exigir_admin
    redirect_to root_path, alert: "Acesso negado" unless current_usuario&.admin?
  end

  def after_sign_in_path_for(usuario)
    usuario.admin? ? root_path : perfil_path # troque root_path pela rota do admin
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :telefone])
  end
end