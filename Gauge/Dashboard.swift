import SwiftUI

struct Dashboard: View {
    let bodyMass: Double
    let bodyFatPercentage: Double
    let activeCaloriesBurned: Double
    let calorieDeficit: Int
    let proteinRatio: Double

    let caloriesGoalUnadjusted: Double
    let caloriesGoal: Double
    let calories: Double

    let fatGoal: Double
    let fiberMinimum: Double
    let netCarbsMaximum: Double
    let proteinGoal: Double

    let fat: Double
    let fiber: Double
    let netCarbs: Double
    let protein: Double

    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                Spacer()
                HStack(spacing: 0) {
                    Spacer()
                    Gauge(title: "Weight", bodyMass, actualPrecision: 1, unit: "lbs", type: .value, scale: 0.8)
                    Gauge(title: "Fat %", bodyFatPercentage, actualPrecision: 1, unit: "%", type: .value, scale: 0.8)
                    Gauge(title: "Activity", activeCaloriesBurned, unit: "cal", type: .value, scale: 0.8)
                    Gauge(title: "Deficit", calorieDeficit, unit: "%", type: .value, scale: 0.8)
                    Gauge(title: "Ratio", proteinRatio, actualPrecision: 2, unit: "g/lbm", type: .value, scale: 0.8)
                    Spacer()
                }
                  .padding(.bottom, 30)

                HStack(spacing: 0) {
                    Spacer()
                    Gauge(title: "Fat", fat, fatGoal, unit: "grams")
                    Spacer()
                    Gauge(title: "Fiber", fiber, fiberMinimum, unit: "grams", type: .floor)
                    Spacer()
                    Gauge(title: "NCarbs", netCarbs, actualPrecision: 1, netCarbsMaximum, unit: "grams", type: .ceiling)
                    Spacer()
                    Gauge(title: "Protein", protein, proteinGoal, unit: "grams")
                    Spacer()
                }
                  .padding(.bottom, 6)

                let bottomCenterAnnotation = "\(Int(calories)) of \(Int(caloriesGoalUnadjusted)) (\(Int(calories - caloriesGoalUnadjusted)), \(Int((calories - caloriesGoalUnadjusted) / caloriesGoalUnadjusted * 100))%)"
                Bar(title: "Calories", calories, caloriesGoal, bottomCenterAnnotation: bottomCenterAnnotation, geo: geo)
                Spacer()
            }
        }
    }
}
