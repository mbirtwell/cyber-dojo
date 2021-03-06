#!/usr/bin/env ruby

require_relative 'model_test_base'

class DojoTests < ModelTestBase

  test 'exercises property' do
    thread[:exercises_path] = 'fake_exercises_path'
    exercises = Dojo.new.exercises
    assert_equal "Exercises", exercises.class.name
  end

  test 'languages property' do
    thread[:languages_path] = 'fake_languages_path'
    languages = Dojo.new.languages
    assert_equal "Languages", languages.class.name
  end

  test 'katas property' do
    thread[:katas_path] = 'fake_katas_path'
    katas = Dojo.new.katas
    assert_equal "Katas", katas.class.name
  end

end
