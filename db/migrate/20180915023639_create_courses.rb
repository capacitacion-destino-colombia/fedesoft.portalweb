class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name_course
      t.binary :videoImg_course
      t.text :course_content
      t.boolean :course_checked_video
      t.integer :course_scale_order
      t.timestamp :course_date_viwed
      t.boolean :course_colector_video

      t.timestamps
    end
    # create_join_table :courses, :profiles do |t|
    # end
  end
end
