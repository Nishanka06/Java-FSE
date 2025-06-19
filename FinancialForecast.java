// Exercise 7: Financial Forecasting using Recursion

public class FinancialForecast {

    
    public static double calculateFutureValue(double currentValue, double growthRate, int years) {
        if (years == 0) {
            return currentValue;  // Base case
        }
        return calculateFutureValue(currentValue, growthRate, years - 1) * (1 + growthRate);
    }

    public static double calculateFutureValueOptimized(double currentValue, double growthRate, int years) {
        return helper(currentValue, growthRate, years);
    }

    private static double helper(double value, double rate, int years) {
        if (years == 0) return value;
        return helper(value * (1 + rate), rate, years - 1);
    }

    public static void main(String[] args) {
        double initialValue = 10000.0;  // Starting investment
        double annualGrowthRate = 0.07; // 7% annual growth
        int numberOfYears = 5;

        double futureValue = calculateFutureValue(initialValue, annualGrowthRate, numberOfYears);
        System.out.printf("Recursive Future Value after %d years: ₹%.2f%n", numberOfYears, futureValue);

        double optimizedValue = calculateFutureValueOptimized(initialValue, annualGrowthRate, numberOfYears);
        System.out.printf("Optimized Future Value after %d years: ₹%.2f%n", numberOfYears, optimizedValue);
    }

    
}
