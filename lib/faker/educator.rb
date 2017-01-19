module Faker
  class Educator < Base
    flexible :educator

    class << self
      def university
        "#{parse('educator.name')} #{fetch('educator.tertiary.type')}"
      end

      def course
        "#{fetch('educator.tertiary.degree.subject')} #{numerify(fetch('educator.tertiary.degree.course_number'))}"
      end

      def subject
        "#{fetch('educator.tertiary.degree.subject')}"
      end

      def degree
        "#{fetch('educator.tertiary.degree.type')} #{fetch('educator.tertiary.degree.subject')}"
      end

      def secondary_school
        "#{parse('educator.name')} #{fetch('educator.secondary')}"
      end

      def campus
        "#{parse('educator.name')} Campus"
      end
    end
  end
end
