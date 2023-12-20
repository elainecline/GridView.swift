 private func createHLine(index: Int) -> some View {
        if index == 0 {
            rectangle
                .frame(height: lineWidth)
        } else {
            VStack(spacing: 0) {
              var body: some View {
        ZStack {
            VStack {
                ForEach(0...yLines, id: \.self) {
                    createHLine(index: $0)
                }
