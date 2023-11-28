
import SwiftUI

struct MainView: View {
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
          
            TaskView()
          
            AddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.white]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        )
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
