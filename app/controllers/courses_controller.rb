class CoursesController < ApplicationController
    def index
        @courses=Course.all
        render json: @courses, status: :ok
    end
    def create
        to_insert = params.permit(:name_course, :videoImg_course, :course_content, :course_checked_video, :course_scale_order, :course_date_viwed, :course_colector_video)
        @courses = Course.create(to_insert)
        render json: @courses, status: :ok
    end
    def show
        @course = Course.find(params[:id])
        render json: @course, status: :ok
    end
    def get_all
        @courses = Course.all
        render json: @courses, status: :ok
    end
    def insert
        to_insert = params.permit(:name_course, :videoImg_course, :course_content, :course_checked_video, :course_scale_order, :course_date_viwed, :course_colector_video)
        @courses = Course.create(to_insert)
        render json: @courses, status: :ok
    end
end
