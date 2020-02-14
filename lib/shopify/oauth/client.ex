defmodule Shopify.OAuth.Client do
  @moduledoc """
  Behaviour for implementing an HTTP client.
  """

  @type response_t ::
          %{
            body: binary,
            headers: Shopify.OAuth.http_headers_t(),
            status_code: pos_integer
          }

  @callback request(
              method :: Shopify.OAuth.http_method_t(),
              url :: String.t(),
              headers :: Shopify.OAuth.http_headers_t(),
              body :: binary,
              opts :: any
            ) :: { :ok, response_t() } | { :error, any }
end
