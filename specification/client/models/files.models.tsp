import "../../base/typespec/files/main.tsp";
import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;
using TypeSpec.Http;

namespace OpenAI;

alias FileCollectionOrderQueryParameter = {
  @query order?: FileCollectionOrder;
};

union FileCollectionOrder {
  string,
  Ascending: "asc",
  Descending: "desc",
}

@access(Access.public)
@usage(Usage.input)
model FileCollectionOptions {
  ...CollectionAfterQueryParameter,
  ...CollectionBeforeQueryParameter,
  ...CollectionLimitQueryParameter,
  ...FileCollectionOrderQueryParameter,

  /** Only return files with the given purpose. */
  @query purpose?: string;
}
