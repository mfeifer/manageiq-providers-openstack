require 'workers/event_catcher'
require 'workers/mixins/event_catcher_openstack_mixin'

class ManageIQ::Providers::Openstack::CloudManager::EventCatcher::Runner < ::EventCatcher
  include ManageIQ::Providers::Openstack::EventCatcherMixin

  def add_openstack_queue(event_hash)
    EmsEvent.add_queue('add_openstack', @cfg[:ems_id], event_hash)
  end
end
