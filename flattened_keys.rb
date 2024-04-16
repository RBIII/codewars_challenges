# Extend the Hash class with a flattened_keys method
class Hash
    def flattened_keys(prefix = nil)
      self.each_with_object({}) do |(key, value), result|
        new_key = if prefix
          prefix.is_a?(String) || key.is_a?(String) ? "#{prefix}_#{key}" : "#{prefix}_#{key}".to_sym
        else
          key
        end
        
        if value.is_a?(Hash)
          result.merge!(value.flattened_keys(new_key))
        else
          result[new_key] = value
        end
      end
    end
  end