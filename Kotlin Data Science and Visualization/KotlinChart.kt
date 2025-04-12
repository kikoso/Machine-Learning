import kotlin.random.Random

fun main() {

    val years = 30
    val simulations = 10000
    val initialInvestment = 1.0

    val bullProb = 0.75

    val portfolioA = mapOf("bull" to 1.20, "bear" to 0.80)
    val portfolioB = mapOf("bull" to 1.25, "bear" to 0.65)

    fun simulatePortfolioAccumulatedReturns(returns: Map<String, Double>, rng: Random): List<Double> {
        var value = initialInvestment
        val accumulatedReturns = mutableListOf<Double>()

        repeat(years) {
            val isBull = rng.nextDouble() < bullProb
            val market = if (isBull) "bull" else "bear"
            value *= returns[market]!!

            val accumulatedReturn = (value - initialInvestment) / initialInvestment * 100
            accumulatedReturns.add(accumulatedReturn)
        }

        return accumulatedReturns
    }

    val rng1 = Random(123)
    val rng2 = Random(123)

    val accumulatedResults = (1..simulations).map {
        val accumulatedReturnsA = simulatePortfolioAccumulatedReturns(portfolioA, rng1)
        val accumulatedReturnsB = simulatePortfolioAccumulatedReturns(portfolioB, rng2)

        mapOf("Simulation" to it, "PortfolioA" to accumulatedReturnsA, "PortfolioB" to accumulatedReturnsB)
    }

    var portfolioAOutperformsB = 0
    var portfolioBOutperformsA = 0

    accumulatedResults.forEach { result ->
        val accumulatedA = result["PortfolioA"] as List<Double>
        val accumulatedB = result["PortfolioB"] as List<Double>

        if (accumulatedA.last() > accumulatedB.last()) {
            portfolioAOutperformsB++
        } else {
            portfolioBOutperformsA++
        }
    }

    println("Number of simulations where Portfolio A outperforms Portfolio B: $portfolioAOutperformsB")
    println("Number of simulations where Portfolio B outperforms Portfolio A: $portfolioBOutperformsA")
    println("Portfolio A outperformed Portfolio B in ${portfolioAOutperformsB.toDouble() / simulations * 100}% of simulations.")
    println("Portfolio B outperformed Portfolio A in ${portfolioBOutperformsA.toDouble() / simulations * 100}% of simulations.")
}