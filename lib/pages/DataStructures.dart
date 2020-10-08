
class Store {

  var searchAlgo = {
    'bubble':0,
    'selection':1,
    'merge':2,
    'shell':3,
    'quick':4,
    'heap':5,
    'prim':6,
    'kruskal':7,
    'dfs':8,
    'bfs':9,
    'bellman':10,
    'ford':10,
    'flloyd':11,
    'warshall':11,
    'common':12,
    'longest':12,
    'rabin':13,
    'karp':13,
    'linear':14,
    'binary': 15,
    'counting': 16,
    'radix':17,
    'bucket':18,
    'dijkstra':19,
    'shortest path':19,
    'topological':20,
    'johnson':21,
    'bridge':22,
    'increasing':23,
    'subsequence':12,
    'knapsack':24,
    'paths':26,
    'grid':26,
    'sieve':27,
    'minimum':25,
    'partition':25,
    'eratosthenes':27,
    'monte':28,
    'carlo':28,
    'fermat':29,
    'primality':29,
    'knuth':30,
    'morris':30,
    'kmp':30,
    'pratt':30,
    'maximum':31,
    'subarray':31,
    'bit':32,
    'permutation':35,
  };


  int searchResult(var _text){
   var x;
   var y;
   x = _text.toLowerCase();
   for(y in searchAlgo.keys){
     if(x.contains(y)){
       return searchAlgo[y];
     }
   }
   return -1;
  }

   var diction = {
     0:"B U B B L E\n S O R T { }",
     1:"S E L E C T I O N\n S O R T { } ",
      2:"M E R G E \n S O R T { }",
     3:"S H E L L\n S O R T { }",
     4:"Q U I C K\n S O R T { }",
     5:"H E A P\n S O R T { }",
     6:"P R I M' S\n A L G O R I T H M { }",
     7:"K R U S K A L' S\n A L G O R I T H M { }",
     8:"D F S { }",
     9:"B F S { }",
     10:"B E L L M A N-F O R D'S\n A L G O R I T H M { }",
     11:"F L L O Y D \n W A R S H A L L { }",
     12:"LONGEST COMMON\nSUBSEQUENCE { }",
     13:"R A B I N-K A R P'S\nA L G O R I T H M { }",
     14:"L I N E A R\nS E A R C H { }",
     15:"B I N A R Y\nS E A R C H { }",
     16:"C O U N T I N G\nS O R T { }",
     17:"R A D I X\nS O R T { }",
     18:"B U C K E T\nS O R T { }",
     19:"D I J K S T R A'S\n A L G O R I T H M { }",
     20:"T O P O L O G I C A L\nS O R T { }",
     21:"J O H N S O N'S\nA L G O R I T H M { }",
     22:"B R I D G E S'S\n I N  G R A P H S { }",
     23:"LONGEST INCREASING\nSUBSEQUENCE { }",
     24:"K N A P S A C K\nP R O B L E M { }",
     25:"M I N I M U M\n P A R T I T I O N { }",
     26:"P A T H S   I N\nA   G R I D { }",
     27:"S I E V E  O F\nE R A T O S T H E N E S { }",
     28:"M O N T E-C A R L O\nA L G O R I T H M { }",
     29:"FERMAT'S\nPRIMALITY TEST { }",
     30:"KNUTH MORRIS\nPRATT ALGORITHM { }",
     31:"M A X I M U M\nS U B A R R A Y  S U M { }",
     32:"N U M B E R\n  I N  B I T S { }",
     33:"S E T\nR E P R E S E N T A T I O N { }",
     34:"G E N E R A T I N G\nS U B S E T S { }",
     35:"G E N E R A T I N G\nP E R M U T A T I O N S { }",

  };

   var dsUsed = {
     0:"O(n\u00B2)",
     1:"O(n\u00B2)",
     2:"O(nlog(n))",
     3:"O(n\u00B2)",
     4:"O(nlog(n))",
     5:"O(nlog(n))",
     6:"O(ElogV)",
     7:"O(ElogV)",
     8:"O(V)",
     9:"O(V)",
     10:"O(V)",
     11:"O(n\u00B3)",
     12:"O(nlog(n))",
     13:"O(mn)",
     14:"O(n\u00B2)",
     31:"O(n)"
   };
   var code={
     0: "void bubbleSort(int array[], int size) {\n"
         "  for (int step = 0; step < size - 1; ++step) {\n"
         "    for (int i = 0; i < size - step - 1; ++i) {\n"
         "      if (array[i] > array[i + 1]) {\n"
         "        int temp = array[i];\n"
         "        array[i] = array[i + 1];\n"
         "        array[i + 1] = temp;\n"
         "      }\n"
         "    }\n"
         "  }\n"
         "}\n",

     1:
     "void selectionSort(int array[], int size) {\n"
         "  for (int step = 0; step < size - 1; step++) {\n"
         "    int min_idx = step;\n"
         "    for (int i = step + 1; i < size; i++) {\n"
         "      if (array[i] < array[min_idx])\n"
         "        min_idx = i;\n"
         "    }\n"
         "    swap(&array[min_idx], &array[step]);\n"
         "  }\n"
         "}\n",


     2:"void merge(int arr[], int p, int q, int r) {\n"
         "    int n1 = q - p + 1;\n"
         "    int n2 = r - q;\n"
         "    int L[n1], M[n2];\n"
         "    for (int i = 0; i < n1; i++)\n"
         "        L[i] = arr[p + i];\n"
         "    for (int j = 0; j < n2; j++)\n"
         "        M[j] = arr[q + 1 + j];\n\n"
         "    int i, j, k;\n"
         "    i = 0;\n"
         "    j = 0;\n"
         "    k = p;\n"
         "    while (i < n1 && j < n2) {\n"
         "        if (L[i] <= M[j]) {\n"
         "            arr[k] = L[i];\n"
         "            i++;\n"
         "        } else {\n"
         "            arr[k] = M[j];\n"
         "            j++;\n"
         "        }\n"
         "        k++;\n"
         "    }\n"
         "    while (i < n1) {\n"
         "        arr[k] = L[i];\n"
         "        i++;\n"
         "        k++;\n"
         "    }\n\n"

         "    while (j < n2) {\n"
         "        arr[k] = M[j];\n"
         "        j++;\n"
         "        k++;\n"
         "    }\n"
         "}\n",
     3:
     "void shellSort(int array[], int n) {\n"
         "  for (int interval = n / 2; interval > 0; interval /= 2) {\n"
         "    for (int i = interval; i < n; i += 1) {\n"
         "      int temp = array[i];\n"
         "      int j;\n"
         "      for (j = i; j >= interval && array[j - interval] > temp; j -= interval) {\n"
         "        array[j] = array[j - interval];\n"
         "      }\n"
         "      array[j] = temp;\n"
         "    }\n"
         "  }\n"
         "}\n",

     4:
     "int partition(int array[], int low, int high) {\n"
         "  // Select the pivot element\n"
         "  int pivot = array[high];\n"
         "  int i = (low - 1);\n\n"
         "  // Put the elements smaller than pivot on the left\n"
         "  // and greater than pivot on the right of pivot\n"
         "  for (int j = low; j < high; j++) {\n"
         "    if (array[j] <= pivot) {\n"
         "      i++;\n"
         "      swap(&array[i], &array[j]);\n"
         "    }\n"
         "  }\n"
         "  swap(&array[i + 1], &array[high]);\n"
         "  return (i + 1);\n"
         "}\n\n"

         "void quickSort(int array[], int low, int high) {\n"
         "  if (low < high) {\n"
         "    // Select pivot position and put all the elements smaller \n"
         "    // than pivot on left and greater than pivot on righ\n"
         "    int pi = partition(array, low, high);\n\n"

         "    // Sort the elements on the left of pivot\n"
         "    quickSort(array, low, pi - 1);\n\n"

         "    // Sort the elements on the right of pivot\n"
         "    quickSort(array, pi + 1, high);\n"
         "  }\n"
         "}\n",
     5:
     " void heapify(int arr[], int n, int i) {\n"
         "    int largest = i;\n"
         "    int left = 2 * i + 1;\n"
         "    int right = 2 * i + 2;\n\n"

         "    if (left < n && arr[left] > arr[largest])\n"
         "      largest = left;\n\n"

         "    if (right < n && arr[right] > arr[largest])\n"
         "      largest = right;\n\n"

         "    if (largest != i) {\n"
         "      swap(arr[i], arr[largest]);\n"
         "      heapify(arr, n, largest);\n"
         "    }\n"
         "  }\n\n\n"


         "  void heapSort(int arr[], int n) {\n"

         "    for (int i = n / 2 - 1; i >= 0; i--)\n"
         "      heapify(arr, n, i);\n\n"

         "    for (int i = n - 1; i >= 0; i--) {\n"
         "      swap(arr[0], arr[i]);\n\n"

         "      // Heapify root element to get highest element at root again\n"
         "      heapify(arr, i, 0);\n"
         "    }\n"
         "  }\n",
     6: "T = ∅;\n"
         "U = { 1 };\n"
         "while (U ≠ V)\n"
         "    let (u, v) be the lowest cost edge such that u ∈ U and v ∈ V - U;\n"
         "    T = T ∪ {(u, v)}\n"
         "    U = U ∪ {v}\n",
     7:"KRUSKAL(G):\n"
         "A = ∅\n"
         "For each vertex v ∈ G.V:\n"
         "    MAKE-SET(v)\n"
         "For each edge (u, v) ∈ G.E ordered by increasing order by weight(u, v):\n"
         "    if FIND-SET(u) ≠ FIND-SET(v):\n"
         "    A = A ∪ {(u, v)}\n"
         "    UNION(u, v)\n"
         "return A\n",
     8:"typedef int Vertex;\n"
         "#define VERTEX_NULL (-1)\n"
         "void dfsHelper(struct graph *g, Vertex parent, Vertex child)\n"
         "{\n"
         "   int i;\n"
         "   Vertex neighbor;\n"
         "   if(g->v[child].parent==VERTEX_NULL) {\n"
         "      g->v[child].parent=parent;\n"
         "      for(i = 0; (neighbor = g->v[child].neighbors[i]) != VERTEX_NULL; i++) {\n"
         "         dfsHelper(g, child, neighbor);\n"
         "         }\n"
         "     }\n"
         "}\n"
         "\n"
         "void dfs(struct graph *g, Vertex root)\n"
         "{dfsHelper(g, root, root);}\n",

     9 :"typedef int Vertex;\n"
         "#define VERTEX_NULL (-1)\n"
         "\n"
         "void bfs(struct graph *g, Vertex root)\n"
         "{\n"
         "   Vertex *q;\n"
         "   int head; /* deq from here */\n"
         "   int tail; /* enq from here */\n"
         "   Vertex current;\n"
         "   Vertex nbr;\n"
         "   int i;\n"
         "   q = malloc(sizeof(Vertex) * g->n);\n"
         "   assert(q);\n"
         "   head = tail = 0;\n"
         "   /* push root onto q */\n"
         "   g->v[root].parent = root;\n"
         "   q[tail++] = root;\n"
         "   while(head < tail) {\n"
         "      current = q[head++];\n"
         "      for(i = 0; (nbr = g->v[current].neighbors[i]) != VERTEX_NULL; i++) {\n"
         "         if(g->v[nbr].parent == VERTEX_NULL) {\n"
         "         /* haven't visited */\n"
         "         /* push it */\n"
         "         g->v[nbr].parent = current;\n"
         "         q[tail++] = nbr;\n"
         "         }\n"
         "      }\n"
         "   }\n"
         "   free(q);\n"
         "}\n",
     10:
     "function bellmanFord(G, S)\n"
         "  for each vertex V in G\n"
         "    distance[V] <- infinite\n"
         "      previous[V] <- NULL\n"
         "  distance[S] <- 0\n\n"

         "  for each vertex V in G\n"
         "    for each edge (U,V) in G\n"
         "      tempDistance <- distance[U] + edge_weight(U, V)\n"
         "      if tempDistance < distance[V]\n"
         "        distance[V] <- tempDistance\n"
         "        previous[V] <- U\n\n"

         "  for each edge (U,V) in G\n"
         "    If distance[U] + edge_weight(U, V) < distance[V}\n"
         "      Error: Negative Cycle Exists\n\n"

         "  return distance[], previous[]\n",
     11:"void floydWarshall (int graph[][V])\n"
         "{\n"
         "    for (i = 0; i < V; i++)\n"
         "        for (j = 0; j < V; j++)\n"
         "            dist[i][j] = graph[i][j];\n"
         "    for (k = 0; k < V; k++)\n"
         "    {\n"
         "        // Pick all vertices as source one by one\n"
         "        for (i = 0; i < V; i++)\n"
         "        {\n"
         "            // Pick all vertices as destination for the\n"
         "            // above picked source\n"
         "            for (j = 0; j < V; j++)\n"
         "            {\n"
         "                // If vertex k is on the shortest path from\n"
         "                // i to j, then update the value of dist[i][j]\n"
         "                if (dist[i][k] + dist[k][j] < dist[i][j])\n"
         "                    dist[i][j] = dist[i][k] + dist[k][j];\n"
         "            }\n"
         "        }\n"
         "    }\n"

         "    // Print the shortest distance matrix\n"
         "    printSolution(dist);\n"
         "}\n",
     12:"X and Y be two given sequences\n"
         "Initialize a table LCS of dimension X.length * Y.length\n"
         "X.label = X\n"
         "Y.label = Y\n"
         "LCS[0][] = 0\n"
         "LCS[][0] = 0\n"
         "Start from LCS[1][1]\n"
         "Compare X[i] and Y[j]\n"
         "    If X[i] = Y[j]\n"
         "        LCS[i][j] = 1 + LCS[i-1, j-1]\n"
         "        Point an arrow to LCS[i][j]\n"
         "    Else\n"
         "        LCS[i][j] = max(LCS[i-1][j], LCS[i][j-1])\n"
         "        Point an arrow to max(LCS[i-1][j], LCS[i][j-1])\n",
     13:"n = t.length\n"
         "m = p.length\n"
         "h = dm-1 mod q\n"
         "p = 0\n"
         "t0 = 0\n"
         "for i = 1 to m\n"
         "    p = (dp + p[i]) mod q\n"
         "    t0 = (dt0 + t[i]) mod q\n"
         "for s = 0 to n - m\n"
         "    if p = ts\n"
         "        if p[1.....m] = t[s + 1..... s + m]\n"
         "            print( pattern found at position s)\n"
         "    If s < n-m\n"
         "        ts + 1 = (d (ts - t[s + 1]h) + t[s + m + 1]) mod q\n",

     14:"int search(int arr[], int n, int x) \n"
         "{ \n"
         "    int i; \n"
         "    for (i = 0; i < n; i++) \n"
         "        if (arr[i] == x) \n"
         "            return i; \n"
         "    return -1; \n"
         "} \n",
     15:"beg: first element\n"
         "end: last element\n"
         "\n"
         "int binarySearch(int array[], int x, int beg, int end) {\n"
         "  while (beg <= end) {\n"
         "    int mid = beg + (end - beg) / 2;\n"
         "    if (array[mid] == x)\n"
         "      return mid;\n"
         "    if (array[mid] < x)\n"
         "      beg = mid + 1;\n"
         "    else\n"
         "      end = mid - 1;\n"
         "  }\n"
         "  return -1;\n"
         "}\n",
     16:"void countSort(int array[], int size) {\n"
         "   int output[10];\n"
         "  int count[10];\n"
         "  int max = array[0];\n"
         "\n"
         "  // Find the largest element of the array\n"
         "  for (int i = 1; i < size; i++) {\n"
         "    if (array[i] > max)\n"
         "      max = array[i];\n"
         "  }\n"
         "\n"
         "  // Initialize count array with all zeros.\n"
         "  for (int i = 0; i <= max; ++i) {\n"
         "    count[i] = 0;\n"
         "  }\n"
         "\n"
         "  // Store the count of each element\n"
         "  for (int i = 0; i < size; i++) {\n"
         "    count[array[i]]++;\n"
         "  }\n"
         "\n"
         "  // Store the cummulative count of each array\n"
         "  for (int i = 1; i <= max; i++) {\n"
         "    count[i] += count[i - 1];\n"
         "  }\n"
         "\n"
         "  // Find the index of each element of the original array in count array, and\n"
         "  // place the elements in output array\n"
         "  for (int i = size - 1; i >= 0; i--) {\n"
         "    output[count[array[i]] - 1] = array[i];\n"
         "    count[array[i]]--;\n"
         "  }\n"
         "\n"
         "  // Copy the sorted elements into original array\n"
         "  for (int i = 0; i < size; i++) {\n"
         "    array[i] = output[i];\n"
         "  }\n"
         "}\n",
     17:"\n"
         "void radixsort(int array[], int size) {\n"
         "  // Get maximum element\n"
         "  int max = getMax(array, size);\n"
         "\n"
         "  // Apply counting sort to sort elements based on place value.\n"
         "  for (int place = 1; max / place > 0; place *= 10)\n"
         "    countingSort(array, size, place);\n"
         "}\n",
     18:"void bucketSort(float arr[], int n) \n"
         "{ \n"
         "    // 1) Create n empty buckets \n"
         "    vector<float> b[n]; \n"
         "     \n"
         "    // 2) Put array elements in different buckets \n"
         "    for (int i=0; i<n; i++) \n"
         "    { \n"
         "       int bi = n*arr[i]; // Index in bucket \n"
         "       b[bi].push_back(arr[i]); \n"
         "    } \n"
         "  \n"
         "    // 3) Sort individual buckets \n"
         "    for (int i=0; i<n; i++) \n"
         "       sort(b[i].begin(), b[i].end()); \n"
         "  \n"
         "    // 4) Concatenate all buckets into arr[] \n"
         "    int index = 0; \n"
         "    for (int i = 0; i < n; i++) \n"
         "        for (int j = 0; j < b[i].size(); j++) \n"
         "          arr[index++] = b[i][j]; \n"
         "} \n",
     19:"function Dijkstra(Graph, source):\n"
         "       dist[source]  := 0\n"
         "       for each vertex v in Graph:\n"
         "           if v ≠ source\n"
         "               dist[v]  := infinity\n"
         "           add v to Q\n"
         "\n"
         "      while Q is not empty:\n"
         "          v := vertex in Q with min dist[v] \n"
         "          remove v from Q \n"
         "\n"
         "          for each neighbor u of v:\n"
         "              alt := dist[v] + length(v, u)\n"
         "              if alt < dist[u]:              \n"
         "                  dist[u]  := alt\n"
         "\n"
         "      return dist[]\n"
         "  end function\n",
     20:"int n; // number of vertices\n"
         "vector<vector<int>> adj; // adjacency list of graph\n"
         "vector<bool> visited;\n"
         "vector<int> ans;\n"
         "\n"
         "void dfs(int v) {\n"
         "    visited[v] = true;\n"
         "    for (int u : adj[v]) {\n"
         "        if (!visited[u])\n"
         "            dfs(u);\n"
         "    }\n"
         "    ans.push_back(v);\n"
         "}\n"
         "\n"
         "void topological_sort() {\n"
         "    visited.assign(n, false);\n"
         "    ans.clear();\n"
         "    for (int i = 0; i < n; ++i) {\n"
         "        if (!visited[i])\n"
         "            dfs(i);\n"
         "    }\n"
         "    reverse(ans.begin(), ans.end());\n"
         "}\n",
     21:"Input : Graph G\n"
         "Output : List of all pair shortest paths for G\n"
         "\n"
         "Johnson(G){\n"
         "\n"
         "    G'.V = G.V + {n}\n"
         "    G'.E = G.E + ((s,u) for u in G.V)\n"
         "    weight(n,u) = 0 in G.V\n"
         "    \n"
         "    Dist = BellmanFord(G'.V,G'.E)\n"
         "    for edge(u,v) in G'.E do\n"
         "        weight(u,v) += h[u] - h[v]\n"
         "    end\n"
         "    \n"
         "    L = []        /*for storing result*/\n"
         "    for vertex v in G.V do\n"
         "        L += Dijkstra(G, G.V)\n"
         "    end\n"
         "    \n"
         "    return L\n"
         "}\n",
     22:"int n; // number of nodes\n"
         "vector<vector<int>> adj; // adjacency list of graph\n"
         "\n"
         "vector<bool> visited;\n"
         "vector<int> tin, low;\n"
         "int timer;\n"
         "\n"
         "void dfs(int v, int p = -1) {\n"
         "    visited[v] = true;\n"
         "    tin[v] = low[v] = timer++;\n"
         "    for (int to : adj[v]) {\n"
         "        if (to == p) continue;\n"
         "        if (visited[to]) {\n"
         "            low[v] = min(low[v], tin[to]);\n"
         "        } else {\n"
         "            dfs(to, v);\n"
         "            low[v] = min(low[v], low[to]);\n"
         "            if (low[to] > tin[v])\n"
         "                IS_BRIDGE(v, to);\n"
         "        }\n"
         "    }\n"
         "}\n"
         "\n"
         "void find_bridges() {\n"
         "    timer = 0;\n"
         "    visited.assign(n, false);\n"
         "    tin.assign(n, -1);\n"
         "    low.assign(n, -1);\n"
         "    for (int i = 0; i < n; ++i) {\n"
         "        if (!visited[i])\n"
         "            dfs(i);\n"
         "    }\n"
         "}\n\n\n"
         "Function IS_BRIDGE(a, b) is some function that will process the fact that edge (a,b) is a bridge, for example, print it.",

     23:"int longestIncreasingSubsequence( int arr[], int n )\n"
         "{\n"
         "    int lis[n];\n"
         "    lis[0] = 1;\n"
         "    /* Compute optimized LIS values in\n"
         "       bottom up manner */\n"
         "    for (int i = 1; i < n; i++ )\n"
         "    {\n"
         "        lis[i] = 1;\n"
         "        for (int j = 0; j < i; j++ )\n"
         "            if ( arr[i] > arr[j] && lis[i] < lis[j] + 1)\n"
         "                lis[i] = lis[j] + 1;\n"
         "    } \n"
         "    // Return maximum value in lis[]\n"
         "    return *max_element(lis, lis+n); \n"
         "}\n",
     24:"Given a list of weights [w1,w2...wn] determine all the sums that can be constructed using the given weights.\n"
         "\n"
         "By recursive method:\n"
         "\n"
         "possible[0][0] = true;\n"
         "for (int k = 1; k <= n; k++) {\n"
         "   for (int x = 0; x <= m; x++) {\n"
         "      if (x-w[k] >= 0) {\n"
         "         possible[x][k] |= possible[x-w[k]][k-1];\n"
         "      }\n"
         "      possible[x][k] |= possible[x][k-1];\n"
         "   }\n"
         "}\n",
     25:"//Partition a set into two subsets such that the difference of subset sums is minimum\n"
         "\n"
         "\n"
         "int findMinRec(int arr[], int i, int sumCalculated, int sumTotal) \n"
         "{  \n"
         "    if (i==0) \n"
         "        return abs((sumTotal-sumCalculated) - sumCalculated); \n"
         "  \n"
         "    // For every item arr[i], we have two choices \n"
         "    // (1) We do not include it first set \n"
         "    // (2) We include it in first set \n"
         "    // We return minimum of two choices \n"
         "    return min(findMinRec(arr, i-1, sumCalculated+arr[i-1], sumTotal), \n"
         "               findMinRec(arr, i-1, sumCalculated, sumTotal)); \n"
         "} \n"
         "  \n"
         "// Returns minimum possible difference between sums \n"
         "// of two subsets \n"
         "int findMin(int arr[], int n) \n"
         "{ \n"
         "    // Compute total sum of elements \n"
         "    int sumTotal = 0; \n"
         "    for (int i=0; i<n; i++) \n"
         "        sumTotal += arr[i]; \n"
         "  \n"
         "    // Compute result using recursive function \n"
         "    return findMinRec(arr, n, 0, sumTotal); \n"
         "} \n",

     26:"Given a grid, value[n][n], find the maximum sum while traversing from upper left corner to the lower right corner\n"
         "\n"
         "int sum[N][N];//To store the sum\n"
         "//sum[y][x] denotes the maximum sum from upper left corner to square[y][x]\n"
         "\n"
         "\n"
         "for (int y = 1; y <= n; y++) {\n"
         "   for (int x = 1; x <= n; x++) {\n"
         "      sum[y][x] = max(sum[y][x-1],sum[y-1][x])+value[y][x];\n"
         "   }\n"
         "}\n",
     27:"void SieveOfEratosthenes(int n) \n"
         "{ \n"
         "    // Create a boolean array prime[0..n] and initialize \n"
         "    // all entries it as true. A value in prime[i] will \n"
         "    // finally be false if i is Not a prime, else true. \n"
         "    bool prime[n+1]; \n"
         "    memset(prime, true, sizeof(prime)); \n"
         "  \n"
         "    for (int p=2; p*p<=n; p++) \n"
         "    { \n"
         "        if (prime[p] == true) \n"
         "        {\n"
         "            for (int i=p*p; i<=n; i += p) \n"
         "                prime[i] = false; \n"
         "        } \n"
         "    } \n"
         "  \n"
         "    // Print all prime numbers \n"
         "    for (int p=2; p<=n; p++) \n"
         "       if (prime[p]) \n"
         "          cout << p << " "; \n"
         "} \n",

     28:"//Function Point returns a random point in the unit circle.\n"
         "func Point() (x, y float64) {\n"
         "    for { // This loop runs 4/π times on average.\n"
         "        x = 2*rand.Float64() - 1\n"
         "        y = 2*rand.Float64() - 1\n"
         "        if x*x+y*y < 1 {\n"
         "            return\n"
         "        }\n"
         "    }\n"
         "}\n",
      29:"Fermat's Little Theorem:\n"
          "If n is a prime number, then for every a, 1 < a < n-1,\n"
          "\n"
          "an-1 ≡ 1 (mod n)\n"
          " OR \n"
          "an-1 % n = 1 \n"
          "\n"
          "int gcd(int a, int b) \n"
          "{ \n"
          "    if(a < b) \n"
          "        return gcd(b, a); \n"
          "    else if(a%b == 0) \n"
          "        return b; \n"
          "    else return gcd(b, a%b);   \n"
          "} \n"
          "\n"
          "\n"
          "bool isPrime(unsigned int n, int k) \n"
          "{ \n"
          "   // Corner cases \n"
          "   if (n <= 1 || n == 4)  return false; \n"
          "   if (n <= 3) return true; \n"
          "  \n"
          "   // Try k times \n"
          "   while (k>0) \n"
          "   { \n"
          "       // Pick a random number in [2..n-2]         \n"
          "       // Above corner cases make sure that n > 4 \n"
          "       int a = 2 + rand()%(n-4);   \n"
          "  \n"
          "       // Checking if a and n are co-prime \n"
          "       if (gcd(n, a) != 1) \n"
          "          return false; \n"
          "   \n"
          "       // Fermat's little theorem \n"
          "       if (power(a, n-1, n) != 1) \n"
          "          return false; \n"
          "  \n"
          "       k--; \n"
          "    } \n"
          "  \n"
          "    return true; \n"
          "} \n",

      30:"Consists of two components:\n"
          "1.The Prefix Functionne (Π)\n"
          "2.The KMP Matcher\n\n"

          "PREFIX- FUNCTION (P)\n"
          " 1. m ←length [P]  //'p' pattern to be matched\n"
          " 2. Π [1] ← 0\n"
          " 3. k ← 0\n"
          " 4. for q ← 2 to m\n"
          " 5. do while k > 0 and P [k + 1] ≠ P [q]\n"
          " 6. do k ← Π [k]\n"
          " 7. If P [k + 1] = P [q]\n"
          " 8. then k← k + 1\n"
          " 9. Π [q] ← k\n"
          " 10. Return Π\n\n"

          "KMP-MATCHER (T, P)\n"
          " 1. n ← length [T]\n"
          " 2. m ← length [P]\n"
          " 3. Π← COMPUTE-PREFIX-FUNCTION (P)\n"
          " 4. q ← 0	// numbers of characters matched\n"
          " 5. for i ← 1 to n	// scan S from left to right \n"
          " 6. do while q > 0 and P [q + 1] ≠ T [i]\n"
          " 7. do q ← Π [q]	// next character does not match\n"
          " 8. If P [q + 1] = T [i]\n"
          " 9. then q ← q + 1	// next character matches\n"
          " 10. If q = m		// is all of p matched?\n"
          " 11. then print 'Pattern occurs with shift' i - m\n"
         " 12. q ← Π [q]		// look for the next match\n",
     31:"int best = 0, sum = 0;\n"
         "for (int k = 0; k < n; k++) {\n"
         "sum = max(array[k],sum+array[k]);\n"
         "best = max(best,sum);\n"
         "}\n"
         "cout << best << '\n';\n",
     32:"//32 bit representation of \n"
         "//an interger number\n"
         "//change value of k according \n"
         "//to the number of bits required\n"
         "\n"
         "for( int k=31;k>=0;k--){\n"
         "   if(x&(1<<k))\n"
         "      cout<<'1';\n"
         "   else\n"
         "      cout<<'0';\n"
         "}\n",
     33:"//to represent the set {1,3,4,8}\n"
         "\n"
         "int x=0;\n"
         "x |= (1<<1);\n"
         "x |=(1<<3);\n"
         "x |=(1<<4);\n"
         "x |=(1<<8);\n"
         "\n"
         "//to print size of the set C++ STL\n"
         "cout <<__builtin_popcount(x)<<'\n';\n"
         "\n"
         "//print all elements belonging to the set\n"
         "for(int i=0; i<32; i++){\n"
         "   if(x&(1<<i))cout<<i<<" ";\n"
         "}\n",
     34:"//recursive algorithm\n\n"
          "vector<int> subset;\n"
          "void generate(int k) {\n"
         "   if (k == n+1) {\n"
         "      //subset created,process subset\n"
         "   } \n"
         "   else {\n"
         "      // include k in the subset\n"
         "      subset.push_back(k);\n"
         "      generate(k+1);\n"
         "      subset.pop_back();\n"
         "      // don’t include k in the subset\n"
         "      generate(k+1);\n"
         "   }\n"
         "}\n",
     35:"//recursive algorithm to generate "
         "//permutations of a set of n elements\n\n"
         "vector<int> permutation;\n"
         "bool chosen[n+1];\n"
         "\n"
         "void search() {\n"
         "  if (permutation.size() == n) {\n"
         "    // process permutation\n"
         "  }\n"
         "  else {\n"
         "    for (int i = 1; i <= n; i++) {\n"
         "      if (chosen[i]) continue;\n"
         "      chosen[i] = true;\n"
         "      permutation.push_back(i);\n"
         "      search();\n"
         "      chosen[i] = false;\n"
         "      permutation.pop_back();\n"
         "    }\n"
         "  }\n"
         "}\n"





   };

}
