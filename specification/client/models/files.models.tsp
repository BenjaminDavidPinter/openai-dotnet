import "../../base/typespec/files/main.tsp";
import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;
using TypeSpec.Http;

namespace OpenAI;

@access(Access.public)
@usage(Usage.input)
model FileCollectionOptions {
  @query @continuationToken after?: string;
  @query limit?: int32 = 20;
  @query purpose?: string;
  ...FileCollectionOrderQueryParameter
}

alias FileCollectionOrderQueryParameter = {
  @query order?: FileCollectionOrder;
};

union FileCollectionOrder {
  string,
  Ascending: "asc",
  Descending: "desc",
}


