class UsersController < ApplicationController
    # 以下のアクションを追加
    def new
      @user = User.new
    end
end