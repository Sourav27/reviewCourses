class AdminMail < ApplicationMailer
    default_url_options[:host]='https://students.iitm.ac.in/reviewCourses'
    def review_mail(course,user)
          @user = User.find_by_id(user)
          @course= Course.find_by_id(course)
        mail( :to => "institutewebops@gmail.com",
    :subject => " #{@user['fullname'].titleize}'s' Review on Course #{@course['name'].titleize}" )
    end
end
