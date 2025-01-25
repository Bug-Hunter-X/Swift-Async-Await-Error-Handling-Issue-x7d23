func fetchData() async throws -> Data {
    let url = URL(string: "https://api.example.com/data")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return data
}

Task { 
    do {
        let data = try await fetchData()
        // Process data
    } catch {
        //Handle the error appropriately 
        print("Error fetching data: \(error)")
        // Example:  Show an error alert to the user, retry the fetch, or perform fallback actions.
    }
} 

//Further improvements
//Consider adding more specific error handling based on the type of error received.