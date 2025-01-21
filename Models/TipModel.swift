import Foundation

struct TipModel: Identifiable {
    let id = UUID()
    
    var tipPercentage: Int
    var split: Int
    var bill: Double
    
    var tip: Double {
        bill * Double(tipPercentage) / 100.0
    }
    
    var total: Double {
        bill + tip
    }
    
    // Currency Formatter for output
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    
    private func formattedAmount(value: Double, split: Int) -> String {
        // Guard against division by zero
        guard split > 0 else { return "$0.00" }
        
        let newValue = value / Double(split)
        
        // Return formatted string or fallback if formatting fails
        return formatter.string(from: NSNumber(value: newValue)) ?? "$0.00"
    }
    
    var totalPerPerson: String {
        formattedAmount(value: total, split: split)
    }
    
    var billPerPerson: String {
        formattedAmount(value: bill, split: split)
    }
    
    var tipPerPerson: String {
        formattedAmount(value: tip, split: split)
    }
    
    // Optional initializer if you'd like to create TipModel from a view
    init(tipPercentage: Int = 15, split: Int = 1, bill: Double = 0.0) {
        self.tipPercentage = tipPercentage
        self.split = split
        self.bill = bill
    }
}
