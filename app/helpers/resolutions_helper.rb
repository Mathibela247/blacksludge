module ResolutionsHelper
    def upvote_label(resolution, user)
        if user.voted_up_on? resolution
            "Cancel Vote"
        else
            "Vote For"
        end
    end

    def button_up_color(resolution, user)
        if user.voted_up_on? resolution
            "btn-danger"
        else
            "btn-info"
        end
    end

    def button_down_color(resolution, user)
        if user.voted_down_on? resolution
            "btn-danger"
        else
            "btn-info"
        end
    end

    def downvote_label(resolution, user)
        if user.voted_down_on? resolution
            "Cancel Vote"
        else
            "Vote Against"
        end
    end



end
