import {
  APIGatewayProxyEventV2,
  APIGatewayProxyResultV2,
  Context,
} from "lambda";

export async function handler(
  event: APIGatewayProxyEventV2,
  lambdaContext: Context
): Promise<APIGatewayProxyResultV2> {
  console.log("request received", event, lambdaContext);

  return {
    statusCode: 200,
    body: JSON.stringify({ message: "success " }),
  };
}
