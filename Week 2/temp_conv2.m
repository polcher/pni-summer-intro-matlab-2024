function [avg_C, rng_C]= temp_conv2(F_array)

avg_F = mean(F_array);
rng_F = range(F_array);

avg_C = temp_conv(avg_F);
rng_C = temp_conv(rng_F);

end

