import SwiftUI

@main
struct GaugeApp: App {
    var body: some Scene {
        WindowGroup {
            Dashboard(bodyMass: 194.5,
                      bodyFatPercentage: 25.5,
                      activeCaloriesBurned: 613,
                      calorieDeficit: 20,
                      proteinRatio: 0.85,
                      caloriesGoalUnadjusted: 2000,
                      caloriesGoal: 1600,
                      calories: 1511,
                      fatGoal: 172,
                      fiberMinimum: 32.3,
                      netCarbsMaximum: 20,
                      proteinGoal: 123,
                      fat: 146,
                      fiber: 34,
                      netCarbs: 19.9,
                      protein: 110)
        }
    }
}
