input_lines = readlines
# 標準入力は複数行で受け取るため、readlinesを使用します。
# また、値を保持するためinput_linesという配列で受けます。

room = input_lines[0].to_i
# 後に計算に使うため、.to_iにより数値変換を行っています。
air_conditioner = input_lines[1].to_i
air_flow = input_lines[2].to_i

temperature_diff = (room - air_conditioner).abs
# .absは絶対値に変換するメソッドです。

require_time = 0

if temperature_diff < 5
    require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
    require_time = 30
elsif temperature_diff >= 10  then
    require_time = 60
end

case air_flow
# caseではcaseに指定したものとcaseの後に出てくるwhenに指定したものを比較していく形になります。
# すなわち比較対象（今回の場合air_flow）が一つの場合caseで記述した方がわかりやすくなります。
when 1 then
  repuire_time
when 2 then
  require_time = require_time - 5
when 3 then
  require_time = require_time - 10
else
  p "風量の値は1~3にしてください"
  exit
  # プログラムの終了」はexitを使用する。
end


p require_time