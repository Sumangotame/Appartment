class Article < ApplicationRecord
    after_create  :create_tenant
    def create_tenant
        Apartment::Tenant.create(name)
    end
end
