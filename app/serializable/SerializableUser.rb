class SerializableUser < JSONAPI::Serializable::Resource
    type 'users'
  
    attributes :id,:email,:first_name,:last_name,:is_manager
  
    link :self do
      @url_helpers.api_user_url(@object.id)
    end
end