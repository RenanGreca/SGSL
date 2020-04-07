import CGSL

extension Array where Element == Float {
    public func mean(
        withStride stride: Int = 1
    ) -> Double {
        return gsl_stats_float_mean(self, stride, count)
    }

    public func median() -> Double {
        let sorted = self.sorted()
        return gsl_stats_float_median_from_sorted_data(sorted, 1, count)
    }

    public func sampleVariance() -> Double {
        return gsl_stats_float_variance(self, 1, count)
    }

    public func sampleVariance(
        withMean mean: Double
    ) -> Double {
        return gsl_stats_float_variance_m(self, 1, count, mean)
    }

    public func sampleStandardDeviation(
        withStride stride: Int = 1
    ) -> Double {
        return gsl_stats_float_sd(self, stride, count)
    }

    public func sampleStandardDeviation(
        withMean mean: Double,
        withStride stride: Int = 1
    ) -> Double {
        return gsl_stats_float_sd_m(self, stride, count, mean)
    }
}
