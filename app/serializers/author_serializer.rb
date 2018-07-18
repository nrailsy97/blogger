class AuthorSerializer < ActiveModel::Serializer
    attributes :uid, :email, :username
    attribute :token, if: :show_token?

    def uid
        object.id
    end

    def show_token?
        self.instance_options[:show_token]
    end

    def token
        self.instance_options[:token]
    end
end
