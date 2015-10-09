# coding: utf-8

class Viewer
  def self.showProgress(lessons)
    lessons.each do |lesson|
      status = (lesson['status'] == 0) ? "[ ]" : "[x]"
      msg = ''
      msg += status + ' | '
      msg += lesson['chap_number']+'. '+lesson['chap'] + ' | '
      msg += lesson['topic_number']+'. '+lesson['topic'] + ' | '
      puts msg
    end
  end
end
