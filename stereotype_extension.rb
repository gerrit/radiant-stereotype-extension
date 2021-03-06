require_dependency 'application_controller'
require 'radiant-stereotype-extension/version'

class StereotypeExtension < Radiant::Extension
  version Radiant::Stereotype::Extension::VERSION
  description "Define templates for Pages' children in Radiant CMS."
  url "http://blog.aissac.ro/radiant/stereotype-extension/"

  def activate
    throw "Custom Fields Extension must be loaded before Stereotype Extension" unless defined?(CustomFieldsExtension)
    Page.send :include, Stereotype::PageExtensions
    Admin::PagesController.class_eval do
      include Stereotype::PagesControllerExtensions
    end
    
    admin.page.edit.add :layout_row, "admin/stereotype"
    admin.page.index.add :sitemap_head, 'admin/stereotype_th', :after => "remove_child_column"
    admin.page.index.add :node, 'admin/stereotype_td', :after => "remove_child_column"
  end
  
  def deactivate
  end
end
