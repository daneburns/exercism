defmodule DateParser do
  def day() do
    "[0-3][0-9]$|^[1-9]"
  end

  def month() do
    "^[0-1][0-9]$|^[1-9]"
  end

  def year() do
    "\\d\\d\\d\\d"
  end

  def day_names() do
    "[day]$"
  end

  def month_names() do
    "\\S(anuary|ebruary|arch|pril|ay|une|uly|ugust|eptember|ovember|ctober|ecember)"
  end

  def capture_day() do
   %{"month_name" => month_names()}
  end

  def capture_month() do
    # Please implement the capture_month/0 function
  end

  def capture_year() do
    # Please implement the capture_year/0 function
  end

  def capture_day_name() do
    # Please implement the capture_day_name/0 function
  end

  def capture_month_name() do
    # Please implement the capture_month_name/0 function
  end

  def capture_numeric_date() do
    # Please implement the capture_numeric_date/0 function
  end

  def capture_month_name_date() do
    # Please implement the capture_month_name_date/0 function
  end

  def capture_day_month_name_date() do
    # Please implement the capture_day_month_name_date/0 function
  end

  def match_numeric_date() do
    # Please implement the match_numeric_date/0 function
  end

  def match_month_name_date() do
    # Please implement the match_month_name_day/0 function
  end

  def match_day_month_name_date() do
    # Please implement the match_day_month_name_date/0 function
  end
end
