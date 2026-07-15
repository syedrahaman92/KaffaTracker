//
//  ContentView.swift
//  KaffaTracker
//
//  Created by Syed Rahaman on 11/06/26.
//

import SwiftUI
import CoreData

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State private var selected = "Baseball"
    @State private var id = 1
    @State private var numberOfDice: Int = 1
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    @State private var scoreboard = Scoreboard()
    @State private var startingPoints = 0
    

    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
//        VStack {
//            Text("Why not try…")
//                    .font(.largeTitle.bold())
//            Text("Knock knock")
//                .padding()
//                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
//            Spacer()
//            
//            ZStack {
//                    RoundedRectangle(cornerRadius: 30)
//                        .frame(width: 150, height: 150)
//                        .foregroundStyle(.tint)
//                    
//                    Image(systemName: "figure.2.and.child.holdinghands")
//                    .font(.system(size: 70))
//                }
//            
//            Spacer()
//            
//            VStack {
//                
//                Circle()
//                    .fill(colors.randomElement() ?? .blue)
//                    .padding()
//                    .overlay(
//                        Image(systemName: "figure.\(selected.lowercased())")
//                            .font(.system(size: 100))
//                            .foregroundColor(.white)
//                    )
//                
//                Text("\(selected)!")
//                    .font(.title)
//            }
//            .transition(.slide)
//            .id(id)
//            
//            Spacer()
//            
//            Button("Try again"){
//                withAnimation(.easeInOut(duration: 1)) {
//                    selected = activities.randomElement() ?? "Archery"
//                    id += 1
//                }
//            }
//            .buttonStyle(.borderedProminent)
//            
//            Spacer()
//            
//            HStack {
//                   DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
//                   
//                   DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
//               }
//            
//        }
        
        
//        TabView {
//            WelcomePage()
//            FeaturePage()
//        }
//        .background(Gradient(colors: gradientColors))
//        .tabViewStyle(.page)
//        .foregroundStyle(.white)
        
        
//        VStack {
//            Text("Dice Roller")
//                .font(.largeTitle.lowercaseSmallCaps())
//            
//            HStack {
//                ForEach(1...numberOfDice, id: \.description) { _ in
//                    DiceView()
//                }
//            }
//            
//            HStack {
//                withAnimation {
//                    Button("Remove Dice", systemImage: "minus.circle.fill") {
//                        numberOfDice -= 1
//                    }
//                    .disabled(numberOfDice == 1)
//                }
//                
//                withAnimation {
//                    Button("Add Dice", systemImage: "plus.circle.fill") {
//                        numberOfDice += 1
//                    }
//                    .disabled(numberOfDice == 5)
//                }
//                                
//            }
//            .padding()
//            .labelStyle(.iconOnly)
//            .font(.title)
//
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Gradient(colors: gradientColors))
//        .tint(.white)
        
//        VStack {
//            
//            VStack(spacing: 8) {
//                Image(systemName: "person.3.sequence.fill")
//                    .foregroundStyle(.tint)
//                    .symbolRenderingMode(.hierarchical)
//                Text("Pick-a-Pal")
//            }
//            .font(.title)
//            .bold()
//            
//            Text(pickedName.isEmpty ? " " : pickedName)
//                .font(.title2)
//                .bold()
//                .foregroundStyle(.tint)
//            
//            
//            List {
//                ForEach(names, id: \.description) { name in
//                    Text(name)
//                }
//            }
//            .clipShape(RoundedRectangle(cornerRadius: 8))
//            
//            TextField("Add Name", text: $nameToAdd)
//                .autocorrectionDisabled()
//                .onSubmit {
//                    if !nameToAdd.isEmpty {
//                        names.append(nameToAdd)
//                        nameToAdd = ""
//                    }
//                }
//            
//            Divider()
//            
//            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
//
//
//            Button {
//                if let randomName = names.randomElement() {
//                    pickedName = randomName
//
//                    if shouldRemovePickedName {
//                        names.removeAll { name in
//                            return (name == randomName)
//                        }
//                    }
//                } else {
//                    pickedName = ""
//                }
//            } label: {
//                Text("Pick Random Name")
//                    .padding(.vertical, 8)
//                    .padding(.horizontal, 16)
//            }
//            .buttonStyle(.borderedProminent)
//            .font(.title2)
//
//        }
//        .padding()
        
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
            SettingsView(doesHighestScoreWin: $scoreboard.doesHighestScoreWin,startingPoints: $startingPoints)
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($scoreboard.players) { $player in
                    GridRow {
                        HStack {
                            if scoreboard.winners.contains(player) {
                                Image(systemName: "crown.fill")
                                    .foregroundStyle(Color.yellow)
                            }
                            TextField("Name", text: $player.name)
                        }
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus") {
                scoreboard.players.append(Player(name: "", score: 0))
            }
            
            Spacer()
            
            switch scoreboard.state {
            case .setup:
                Button("Start Game", systemImage: "play.fill") {
                    scoreboard.state = .playing
                    scoreboard.reserScores(to: startingPoints)
                }
            case .playing:
                Button("End Game", systemImage: "stop.fill") {
                    scoreboard.state = .gameOver
                }
            case .gameOver:
                Button("Reset Game", systemImage: "arrow.counterclockwise") {
                    scoreboard.state = .setup
                }
            }
        }
        .padding()
        
    }
    
    struct DayForecast: View {
        let day: String
        let isRainy: Bool
        let high: Int
        let low: Int
        
        var iconName: String {
            if isRainy {
                return "cloud.rain.fill"
            } else {
                return "sun.max.fill"
            }
        }
        
        var iconColor: Color {
            if isRainy {
                return Color.blue
            } else {
                return Color.yellow
            }
        }
        
        var body: some View {
            VStack {
                Text(day)
                    .font(Font.headline)
                Image(systemName: iconName)
                    .foregroundStyle(iconColor)
                    .font(Font.largeTitle)
                    .padding(5)
                Text("High: \(high)")
                    .fontWeight(Font.Weight.semibold)
                Text("Low: \(low)")
                    .fontWeight(Font.Weight.medium)
                    .foregroundStyle(Color.secondary)
            }
            .padding()
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
