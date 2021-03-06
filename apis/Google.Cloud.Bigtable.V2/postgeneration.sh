#!/bin/bash

set -e

sed -i -r -f BigtableServiceApiClient.sed Google.Cloud.Bigtable.V2/BigtableServiceApiClient.cs

dotnet run -p Google.Cloud.Bigtable.V2.GenerateClient \
  Google.Cloud.Bigtable.V2/Google.Cloud.Bigtable.V2.csproj \
  BigtableServiceApiClient \
  BigtableClient
