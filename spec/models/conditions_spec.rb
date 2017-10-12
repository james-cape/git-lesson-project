require "spec_helper"

describe Condition do
  describe "Validation" do
    it "is invalid without a date" do
      condtion = Condition.new(
      max_temperature_f: 70,
      min_temperature_f: 40,
      mean_temperature_f: 60,
      mean_humidity: 30,
      mean_visibility_miles: 10,
      mean_wind_speed_mph: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a unique date" do
      Condition.create(
      date: Date.new(2013,8,28),
      max_temperature_f: 70,
      min_temperature_f: 40,
      mean_temperature_f: 60,
      mean_humidity: 30,
      mean_visibility_miles: 10,
      mean_wind_speed_mph: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      condtion = Condition.create(
      date: Date.new(2013,8,28),
      max_temperature_f: 72,
      min_temperature_f: 42,
      mean_temperature_f: 64,
      mean_humidity: 38,
      mean_visibility_miles: 1,
      mean_wind_speed_mph: 3,
      precipitation_inches: 2,
      zip_code: 95233)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a max temperature" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      min_temperature_f: 40,
      mean_temperature_f: 60,
      mean_humidity: 30,
      mean_visibility_miles: 10,
      mean_wind_speed_mph: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a min temperature" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      max_temperature_f: 40,
      mean_temperature_f: 60,
      mean_humidity: 30,
      mean_visibility_miles: 10,
      mean_wind_speed_mph: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a mean temperature" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      max_temperature_f: 40,
      min_temperature_f: 60,
      mean_humidity: 30,
      mean_visibility_miles: 10,
      mean_wind_speed_mph: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a mean humidity" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      max_temperature_f: 40,
      min_temperature_f: 60,
      mean_temperature_f: 30,
      mean_visibility_miles: 10,
      mean_wind_speed_mph: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a mean visibility" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      max_temperature_f: 40,
      min_temperature_f: 60,
      mean_temperature_f: 30,
      mean_humidity: 10,
      mean_wind_speed_mph: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a mean wind speed" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      max_temperature_f: 40,
      min_temperature_f: 60,
      mean_temperature_f: 30,
      mean_humidity: 10,
      mean_visibility_miles: 4 ,
      precipitation_inches: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a precipitation" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      max_temperature_f: 40,
      min_temperature_f: 60,
      mean_temperature_f: 30,
      mean_humidity: 10,
      mean_visibility_miles: 4 ,
      mean_wind_speed_mph: 1,
      zip_code: 95234)

      expect(condtion).to_not be_valid
    end

    it "is invalid without a zip code" do
      condtion = Condition.new(
      date: Date.new(2013,8,28),
      max_temperature_f: 40,
      min_temperature_f: 60,
      mean_temperature_f: 30,
      mean_humidity: 10,
      mean_visibility_miles: 4 ,
      mean_wind_speed_mph: 1,
      precipitation_inches: 4)

      expect(condtion).to_not be_valid
    end
  end

  describe "class_methods" do
<<<<<<< HEAD
    describe ".trips with max temperature" do
      it "returns collection of conditions between temperatures associated with trips" do
        Trip.create!(
          duration: 633456,
          start_date: DateTime.new(2014,8,23,14,13),
          start_station_name: "Van Ness at Market",
          start_station_id: 66,
          end_date: DateTime.new(2014,8,23,17,17),
          end_station_name: "Van Ness at Market",
          end_station_id: 66,
          bike_id: 400,
          zip_code: 94127,
          subscription_type: "Subscriber")

        Trip.create!(
          duration: 644456,
          start_date: DateTime.new(2014,8,23,14,13),
          start_station_name: "Van Ness at Market",
          start_station_id: 40,
          end_date: DateTime.new(2014,8,23,17,17),
          end_station_name: "Van Ness at Market",
          end_station_id: 40,
          bike_id: 400,
          zip_code: 94127,
          subscription_type: "Subscriber")

        Condition.create!(
          date: Date.new(2014,8,23),
          max_temperature_f: 40,
          min_temperature_f: 30,
          mean_temperature_f: 35,
=======
    # describe ".trips with max temperature"
    #   it "returns collection of conditions between temperatures associated with trips" do
    #     Condition.create!(
    #     date: Date.new(2013,8,28),
    #     max_temperature_f: 40,
    #     min_temperature_f: 60,
    #     mean_temperature_f: 30,
    #     mean_humidity: 10,
    #     mean_visibility_miles: 4 ,
    #     mean_wind_speed_mph: 1,
    #     precipitation_inches: 4)
    # end

    describe ".trips_with_wind_speed"
      it "returns count of conditions between wind speed associated with trips" do
        Condition.create!(
          date: Date.new(2013,8,28),
          max_temperature_f: 40,
          min_temperature_f: 60,
          mean_temperature_f: 30,
>>>>>>> 056a3da14419e8f8dfa06b73b36dc3dc6c0f1736
          mean_humidity: 10,
          mean_visibility_miles: 4 ,
          mean_wind_speed_mph: 1,
          precipitation_inches: 4,
<<<<<<< HEAD
          zip_code: 94127)

          expect(Condition.trips_with_max_temperature(30, 50).count).to eq(2)
        end
      end

      describe ".trips with average max temperature" do
        it "returns average trips between temperatures" do
          Trip.create!(
            duration: 633456,
            start_date: DateTime.new(2014,8,23,14,13),
            start_station_name: "Van Ness at Market",
            start_station_id: 66,
            end_date: DateTime.new(2014,8,23,17,17),
            end_station_name: "Van Ness at Market",
            end_station_id: 66,
            bike_id: 400,
            zip_code: 94127,
            subscription_type: "Subscriber")

          Trip.create!(
            duration: 644456,
            start_date: DateTime.new(2014,8,23,14,13),
            start_station_name: "Van Ness at Market",
            start_station_id: 40,
            end_date: DateTime.new(2014,8,23,17,17),
            end_station_name: "Van Ness at Market",
            end_station_id: 40,
            bike_id: 400,
            zip_code: 94127,
            subscription_type: "Subscriber")

          Condition.create!(
            date: Date.new(2014,8,23),
            max_temperature_f: 40,
            min_temperature_f: 30,
            mean_temperature_f: 35,
            mean_humidity: 10,
            mean_visibility_miles: 4 ,
            mean_wind_speed_mph: 1,
            precipitation_inches: 4,
            zip_code: 94127)

            expect(Condition.average_trips_with_max_temperature(30, 50)).to eq(2)
          end
        end



      end
    end
=======
          zip_code: 54401
          )

        Trip.create!(
          duration: 63,
          start_station_name: "South Van Ness at Market",
          start_date: DateTime.new(2013,8,28,14,14),
          start_station_id: 66,
          end_date: DateTime.new(2013,8,28,14,14),
          end_station_name: "South Van Ness at Market",
          end_station_id: 66,
          bike_id: 520,
          subscription_type: "Subscriber",
          zip_code: 94127
          )

        expect(Condition.all.trips_with_wind_speed(0, 4)).to eq(1)
    end
  end

  describe ".average_trips_with_wind_speed"
    it "returns average wind speed associated with trips" do
      Condition.create!(
        date: Date.new(2013,8,28),
        max_temperature_f: 40,
        min_temperature_f: 60,
        mean_temperature_f: 30,
        mean_humidity: 10,
        mean_visibility_miles: 4 ,
        mean_wind_speed_mph: 1,
        precipitation_inches: 4,
        zip_code: 54401
        )

      Condition.create!(
        date: Date.new(2013,8,28),
        max_temperature_f: 40,
        min_temperature_f: 60,
        mean_temperature_f: 30,
        mean_humidity: 10,
        mean_visibility_miles: 4 ,
        mean_wind_speed_mph: 3,
        precipitation_inches: 4,
        zip_code: 54401
        )

      Trip.create!(
        duration: 63,
        start_station_name: "South Van Ness at Market",
        start_date: DateTime.new(2013,8,28,14,14),
        start_station_id: 66,
        end_date: DateTime.new(2013,8,28,14,14),
        end_station_name: "South Van Ness at Market",
        end_station_id: 66,
        bike_id: 520,
        subscription_type: "Subscriber",
        zip_code: 94127
        )

      expect(Condition.all.trips_with_wind_speed(0, 4)).to eq(2)
    end
  end
>>>>>>> 056a3da14419e8f8dfa06b73b36dc3dc6c0f1736
